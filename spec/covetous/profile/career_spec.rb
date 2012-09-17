require 'spec_helper'

describe 'Career' do
  describe 'when given a battle tag name and id' do
    before do
      @my_profile = Covetous::Profile::Career.new('corroded-6950')
    end

    it 'returns your career profile' do
      @my_profile.must_equal true
    end
  end
end
