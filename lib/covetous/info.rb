module Covetous
  module Info
    include HTTParty

    BASE_URL = "#{Covetous::BASE_URL}/data"
  end
end

