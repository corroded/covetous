require_relative '../lib/covetous'

require 'minitest/spec'
require 'minitest/autorun'
require 'webmock/minitest'
require 'vcr'

#VCR config
VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/covetous_cassettes'
  c.hook_into :webmock
end
