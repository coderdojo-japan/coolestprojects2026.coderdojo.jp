# See the following 'Custom Tests' section to add tests ;)
# https://github.com/gjtorikian/html-proofer#custom-tests

require 'json'
require 'yaml'
require 'time'

class CustomChecks < ::HTMLProofer::Check
  BASE_PATH = '_site'

  def run
    filename = @runner.current_filename
    puts "\tchecking ... " + filename.delete_prefix('_site')

    check_directory_structure(filename) if filename.end_with?('.html')
    check_time_table_overlaps if filename.end_with?('time-table/index.html')
  end

  # Check directory structure to ensure all pages are generated as index.html
  # This ensures proper routing for both /foobar/ and /foobar pathes.
  def check_directory_structure(filename)
    # Get the file's basename and allowed ones
    basename = File.basename(filename)
    allowed_names = ['index.html', '404.html']

    # Skip if allowed filenames or redirect files
    return if allowed_names.include?(basename)
    return if is_redirect_file?(filename)

    # Report failure for non-index HTML files
    add_failure(
      <<~ERROR_MESSAGE
        index.html でない HTML ファイルが生成されました:
        \s File: #{filename}
        \s すべてのページは index.html として生成される必要があります。
        \s これにより /path/ と /path の両方でルーティングが可能になります。
      ERROR_MESSAGE
    )
  end

  # Check if it's a redirect or not by meta tags
  def is_redirect_file?(filename)
    return false unless File.exist?(filename)

    # Check for meta refresh redirect tag
    content = File.read(filename)
    content.include?('<meta http-equiv="refresh"') ||
    content.include?("<meta http-equiv='refresh'") ||
    content.include?('<meta http-equiv=refresh')
  end

  # Check time table overlaps using Range#cover?
  def check_time_table_overlaps
    data = YAML.load_file('_data/time_table.yml')

    # 会議室ごとにイベントをグループ化
    room_events = Hash.new { |h, k| h[k] = [] }

    data['events'].each do |event|
      start_time = Time.parse(event['start'])
      end_time   = Time.parse(event['end'])

      room_events[event['room']] << {
        title:     event['title'],
        start_str: event['start'],
        end_str:   event['end'],
        range:     (start_time...end_time)  # 終了時間を含まない範囲
      }
    end

    # 各会議室で重複チェック
    room_events.each do |room, events|
      # 開始時間でソート
      sorted = events.sort_by { |e| e[:range].begin }

      # 隣接するイベント間で重複をチェック
      sorted.each_cons(2) do |a, b|
        # Range#cover? で重複検出
        if a[:range].cover?(b[:range].begin)
          add_failure(
            <<~ERROR_MESSAGE
              タイムテーブルに重複があります [#{room}]:
              \s #{a[:start_str]}-#{a[:end_str]}: #{a[:title]}
              \s #{b[:start_str]}-#{b[:end_str]}: #{b[:title]}
            ERROR_MESSAGE
          )
        end
      end
    end

    puts "\t✓ タイムテーブル重複検知完了"
  rescue => e
    add_failure("タイムテーブル検証エラー: #{e.message}")
  end
end
