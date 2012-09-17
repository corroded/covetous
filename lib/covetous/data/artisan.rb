class UnknownArtisanTypeError < StandardError
end

module Covetous
  module Data
    class Artisan < Covetous::Shen
      ARTISAN_TYPES = %w{blacksmith jeweler}

      def initialize(artisan_type)
        raise UnknownArtisanTypeError, "Please only use an artisan type from: #{ARTISAN_TYPES.to_s}" unless ARTISAN_TYPES.include? artisan_type
        @url = "#{Covetous::Data::BASE_URL}/artisan/#{artisan_type}"

        super
      end
    end
  end
end
