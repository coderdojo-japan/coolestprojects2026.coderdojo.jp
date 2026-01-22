task default: 'test'

# HTML Proofer helps to detect broken links.
# https://github.com/gjtorikian/html-proofer
require 'html-proofer'

task test: [:build] do
  options = {
    checks: ['Links', 'Images', 'Scripts', 'OpenGraph', 'Favicon'],
    allow_hash_href:  true,
    disable_external: true,
    enforce_https:    true,

    # Use REGEX to ignore files in tests like: /example(.*)\.html/
    ignore_files: [],

    # Use REGEX to ignore URLs in test like: /example.com/
    ignore_urls: [],

    #ignore_status_ignore: [0, 500, 999],
  }

  HTMLProofer.check_directory('_site', options).run
end

# Enable 'build' to flush cache files via 'clean'
task build: [:clean] do
  system 'bundle exec jekyll build' unless ENV['SKIP_BUILD'] == 'true'
end

task :clean do
  system 'bundle exec jekyll clean' unless ENV['SKIP_BUILD'] == 'true'
end
