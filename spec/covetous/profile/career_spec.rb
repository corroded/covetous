require 'spec_helper'

describe 'Career' do
  before do
    # VCR.insert_cassette 'career_profile', :record => :once
    VCR.use_cassette('career_profile') do
      @my_profile = Covetous::Profile::Career.new 'corroded-6950'
    end
  end

  after do
    VCR.eject_cassette
  end

  describe 'when given a battle tag name and id' do
    it 'should have the correct url' do
      @my_profile.url.must_equal 'http://us.battle.net/api/d3/profile/corroded-6950/'
    end
  end

  describe 'when getting a profile' do
    it 'should have all the hero names associated with that profile' do
      @my_profile.hero_names.must_equal ['corrodee', 'corrodeath', 'corrodea', 'corrodead', 'corroder']
    end
  end
end
