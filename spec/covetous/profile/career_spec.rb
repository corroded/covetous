require 'spec_helper'

describe 'Career' do
  describe 'when given a battle tag name and id' do
    before do
      @my_profile = Covetous::Profile::Career.new 'corroded-6950'
      VCR.insert_cassette 'career_profile', :record => :once
    end

    after do
      VCR.eject_cassette
    end

    it 'should have the correct url' do
      @my_profile.url.must_equal 'http://us.battle.net/api/d3/profile/corroded-6950/'
    end

    it 'should record the fixture' do
      Covetous::Profile::Career.get @my_profile.url
    end
  end
end
