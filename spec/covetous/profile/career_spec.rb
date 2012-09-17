require 'spec_helper'

describe 'Career' do
  describe 'when given a battle tag name and id' do
    before do
      @my_profile = Covetous::Profile::Career.new('corroded-6950')
    end

    it 'returns your career profile' do
      @my_profile.url.must_equal 'http://us.battle.net/api/d3/profile/corroded-6950/'
    end
  end
end
