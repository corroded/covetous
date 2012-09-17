module Covetous
  module Profile
    class Hero < Covetous::Profile::Career
      def initialize(battle_tag, hero_id)
        @url = "#{Covetous::Profile::BASE_URL}/#{battle_tag}/hero/#{hero_id}"
        @response = Covetous::Profile.get @url
      end
    end
  end
end
