class NoHeroFoundForProfileError < StandardError
end

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

      def get_hero_details_of(hero_name)
        raise NoHeroFoundForProfileError, "No such hero was found under #{battle_tag}" unless hero_names.include? hero_name
        
        hero_index = hero_names.index hero_name
        battle_tag_for_api = battle_tag.gsub('#', '-')
        Covetous::Profile::Hero.new battle_tag_for_api, heroes[hero_index]['id']
      end
    end
  end
end
