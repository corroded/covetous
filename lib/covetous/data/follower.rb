class UnknownFollowerTypeError < StandardError
end

module Covetous
  module Data
    class Follower < Covetous::Shen
      FOLLOWER_TYPES = %w{enchantress scoundrel templar}

      def initialize(follower_type)
        raise UnknownFollowerTypeError, "Please only use a follower type from: #{FOLLOWER_TYPES.to_s}" unless FOLLOWER_TYPES.include? follower_type
        @url = "#{Covetous::Data::BASE_URL}/follower/#{follower_type}"

        super
      end
    end
  end
end
