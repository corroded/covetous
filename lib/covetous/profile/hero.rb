module Covetous
  module Profile
    class Hero
      attr_accessor :url, :response

      def initialize(battle_tag, hero_id)
        @url = "#{Covetous::Profile::BASE_URL}/#{battle_tag}/hero/#{hero_id}"
        @response = Covetous::Profile.get @url
      end

      def method_missing(name, *args, &block)
        camelcased_key = name.to_s.camelize(:lower)
        if @response.has_key?(camelcased_key)
          @response[camelcased_key]
        else
          super
        end
      end
    end
  end
end
