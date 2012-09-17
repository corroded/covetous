module Covetous
  module Profile
    class Hero < Covetous::Shen
      def initialize(battle_tag, hero_id)
        @url = "#{Covetous::Profile::BASE_URL}/#{battle_tag}/hero/#{hero_id}"
        super
      end
    end
  end
end
