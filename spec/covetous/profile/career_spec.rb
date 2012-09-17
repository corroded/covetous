require 'spec_helper'

describe 'Career' do
  before do
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

    it 'should have the top level keys available as methods' do
      top_level_keys = %w{heroes last_hero_played artisans hardcore_artisans kills time_played fallen_heroes battle_tag progression hardcore_progression}

      top_level_keys.each do |tl_key|
        @my_profile.send(tl_key).must_equal @my_profile.response[tl_key.camelize(:lower)]
      end
    end

    it "should throw an error when trying to call a top level key that doesn't exist" do
      lambda { @my_profile.foo_attribute }.must_raise NoMethodError
    end
  end
end
