# See the following 'Custom Tests' section to add tests ;)
# https://github.com/gjtorikian/html-proofer#custom-tests

require 'json'
require 'yaml'

class CustomChecks < ::HTMLProofer::Check
  BASE_PATH = '_site'

  def run
    filename = @runner.current_filename
    puts "\tchecking ... " + filename.delete_prefix('_site')
    check_directory_structure(filename) if filename.end_with?('.html')
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
end
