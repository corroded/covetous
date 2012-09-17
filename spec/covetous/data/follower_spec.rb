require 'spec_helper'

describe 'Follower' do
  it 'should raise UnknownFollowerTypeError if given an unknown follower' do
    lambda { Covetous::Data::Follower.new("assassin") }.must_raise UnknownFollowerTypeError
  end

  describe 'given a correct follower type' do
    before do
      VCR.use_cassette('follower_data') do
        @follower_info = Covetous::Data::Follower.new 'enchantress'
      end
    end

    after do
      VCR.eject_cassette
    end

    it 'should get the correct response' do
      @follower_info.name.must_equal 'Enchantress'
    end
  end
end
