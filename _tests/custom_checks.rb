# See the following 'Custom Tests' section to add tests ;)
# https://github.com/gjtorikian/html-proofer#custom-tests

require 'json'
require 'yaml'

class CustomChecks < ::HTMLProofer::Check
  BASE_PATH = '_site'

  def run
    current_filename = @runner.current_filename
    puts "\tchecking ... " + current_filename[5..].split('.').first

    check_directory_structure
  end

  # Check directory structure to ensure all pages are generated as index.html
  # This ensures proper routing for both /foobar/ and /foobar pathes.
  def check_directory_structure
    allowed_names = ['index.html', '404.html']
    current_file  = @runner.current_filename

    # Only check HTML files
    return unless current_file.end_with?('.html')

    # Get the filename
    filename = File.basename(current_file)

    # Skip if allowed filenames or redirect files
    return if allowed_names.include?(filename)
    return if is_redirect_file?(current_file)

    # Report failure for non-index HTML files
    add_failure(
      <<~ERROR_MESSAGE
        index.html でない HTML ファイルが生成されました:
        \s File: #{current_file}
        \s すべてのページは index.html として生成される必要があります。
        \s これにより /path/ と /path の両方でルーティングが可能になります。
      ERROR_MESSAGE
    )
  end

  # Check if it's a redirect or not by meta tags
  def is_redirect_file?(filepath)
    return false unless File.exist?(filepath)

    content = File.read(filepath)
    # Check for meta refresh redirect tag
    content.include?('<meta http-equiv="refresh"') ||
    content.include?("<meta http-equiv='refresh'") ||
    content.include?('<meta http-equiv=refresh')
  end
end
