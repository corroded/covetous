require 'spec_helper'

describe 'Hero' do
  before do
    VCR.use_cassette('hero_profile') do
      @my_hero = Covetous::Profile::Hero.new 'corroded-6950', '12793941'
    end
  end

  after do
    VCR.eject_cassette
  end

  describe 'when given a battle tag name, id, and hero id' do
    it 'should have the correct url' do
      @my_hero.url.must_equal 'http://us.battle.net/api/d3/profile/corroded-6950/hero/12793941'
    end
  end

  describe 'when receiving the hero details' do
    it 'should have the top level keys as methods' do
      top_level_keys = %w{id name gender level paragonLevel hardcore skills items followers stats kills progress dead last-updated}

      top_level_keys.each do |tl_key|
        @my_hero.send(tl_key).must_equal @my_hero.response[tl_key.camelize(:lower)]
      end
    end
  end

end
