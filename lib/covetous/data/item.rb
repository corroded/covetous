module Covetous
  module Data
    class Item
      attr_accessor :url

      def initialize(item_data)
        @url = "#{Covetous::Data::BASE_URL}/item/#{item_data}"
      end
    end
  end
end
