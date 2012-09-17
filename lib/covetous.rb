require "covetous/version"
require 'httparty'

Dir[File.dirname(__FILE__) + '/covetous/**/*.rb'].each do |file|
  require file
end

module Covetous
  # Your code goes here...
end
