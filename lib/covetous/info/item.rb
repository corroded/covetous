module Covetous
  module Info
    class Item
      attr_accessor :url

      def initialize(item_data)
        @url = "#{Covetous::Info::BASE_URL}/item/#{item_data}"
      end
    end
  end
end
