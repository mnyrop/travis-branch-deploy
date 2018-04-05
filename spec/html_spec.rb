require 'rspec'
require 'html-proofer'

RSpec.describe 'htmlproofer' do
  it 'passes' do
    opts = {
          :check_external_hash => true,
          :allow_hash_href => true,
          :check_html => true,
          :disable_external => true,
          :empty_alt_ignore => true,
          :only_4xx => true,
          :verbose => true
        }
    HTMLProofer.check_directory('./_site', opts).run
  end
end
