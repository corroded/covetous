module Covetous
  module Data
    include HTTParty

    BASE_URL = "#{Covetous::BASE_URL}/data"
  end
end

