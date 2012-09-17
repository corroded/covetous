require 'spec_helper'

describe 'Artisan' do
  it 'should raise UnknownArtisanTypeError if given an unknown artisan' do
    lambda { Covetous::Data::Artisan.new("assassin") }.must_raise UnknownArtisanTypeError
  end

  describe 'given a correct artisan type' do
    before do
      VCR.use_cassette('artisan_data') do
        @artisan_info = Covetous::Data::Artisan.new 'jeweler'
      end
    end

    after do
      VCR.eject_cassette
    end

    it 'should get the correct response' do
      @artisan_info.name.must_equal 'Jeweler'
    end
  end
end

