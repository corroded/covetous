module Covetous
  module Profile
    include HTTParty

    BASE_URL = "#{Covetous::BASE_URL}/profile"
  end
end
