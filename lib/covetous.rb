require "covetous/version"
require 'httparty'
require 'active_support/inflector'

module Covetous
  REGION = 'us.battle.net'
  BASE_URL = "http://#{REGION}/api/d3"
end

Dir[File.dirname(__FILE__) + '/covetous/**/*.rb'].each do |file|
  require file
end
