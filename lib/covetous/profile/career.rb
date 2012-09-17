module Covetous
  module Profile
    class Career < Covetous::Shen
      def initialize(battle_tag)
        @url = "#{Covetous::Profile::BASE_URL}/#{battle_tag}/"
        super
      end

      def hero_names
        heroes.map{ |hero| hero['name'] }
      end
    end
  end
end
