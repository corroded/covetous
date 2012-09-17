module Covetous
  module Profile
    class Career
      attr_accessor :url, :info

      def initialize(battle_tag)
        @url = "#{Covetous::Profile::BASE_URL}/#{battle_tag}/"
        @info = Covetous::Profile.get @url
      end

      def hero_names
        heroes.map{ |hero| hero['name'] }
      end

      def method_missing(name, *args, &block)
        if @info.has_key?(name.to_s)
          @info[name.to_s]
        else
          super
        end
      end
    end
  end
end
