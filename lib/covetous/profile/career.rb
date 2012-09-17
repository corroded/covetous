module Covetous
  module Profile
    class Career
      include HTTParty     

      attr_accessor :url

      def initialize(battle_tag)
        @url = "#{Covetous::Profile::BASE_URL}/#{battle_tag}/"
      end

    end
  end
end
