module Covetous
  module Profile
    class Hero < Covetous::Artisan
      def initialize(battle_tag, hero_id)
        @url = "#{Covetous::Profile::BASE_URL}/#{battle_tag}/hero/#{hero_id}"
        super
      end
    end
  end
end
