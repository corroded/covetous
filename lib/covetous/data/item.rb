module Covetous
  module Data
    class Item < Covetous::Artisan
      def initialize(item_data)
        @url = "#{Covetous::Data::BASE_URL}/item/#{item_data}"
        super
      end
    end
  end
end
