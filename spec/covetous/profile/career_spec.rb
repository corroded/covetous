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

    it 'should have the basic data available as methods' do
      @my_profile.heroes.must_equal                 @my_profile.info['heroes']
      @my_profile.last_hero_played.must_equal       @my_profile.info['lastHeroPlayed']
      @my_profile.artisans.must_equal               @my_profile.info['artisans']
      @my_profile.hardcore_artisans.must_equal      @my_profile.info['hardcoreArtisans']
      @my_profile.kills.must_equal                  @my_profile.info['kills']
      @my_profile.time_played.must_equal            @my_profile.info['timePlayed']
      @my_profile.fallen_heroes.must_equal          @my_profile.info['fallenHeroes']
      @my_profile.battle_tag.must_equal             @my_profile.info['battleTag']
      @my_profile.progression.must_equal            @my_profile.info['progression']
      @my_profile.hardcore_progression.must_equal   @my_profile.info['hardcoreProgression']
    end
  end
end
