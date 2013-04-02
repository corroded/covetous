# require 'simplecov'
# SimpleCov.start
require 'coveralls'
Coveralls.wear!

require_relative '../lib/covetous'

require 'minitest/spec'
require 'minitest/autorun'
require 'webmock/minitest'
require 'vcr'
require 'pry'

#VCR config
VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/covetous_cassettes'
  c.hook_into :webmock
end
