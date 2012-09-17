require 'spec_helper'

describe 'Item' do
  before do
    VCR.use_cassette('item_data') do
      @my_item = Covetous::Data::Item.new 'CkMIz4LU4AoSBwgEFX35Tl0dLWYPvh194Mt2Ha3H5XEdElz0_B2H9XtuIgsIARWFQgMAGAAgCjAJOLYEQABIAVAOYPkEGPrl99QLUAZYAA'
    end
  end

  after do
    VCR.eject_cassette
  end

  describe 'when given item data on create' do
    it 'should have the correct url' do
      @my_item.url.must_equal 'http://us.battle.net/api/d3/data/item/CkMIz4LU4AoSBwgEFX35Tl0dLWYPvh194Mt2Ha3H5XEdElz0_B2H9XtuIgsIARWFQgMAGAAgCjAJOLYEQABIAVAOYPkEGPrl99QLUAZYAA'
    end

    it 'should have the top level keys available as methods' do
      top_level_keys = %w{ id name icon displayColor tooltipParams requiredLevel itemLevel bonusAffixes typeName type armor attributes attributesRaw socketEffects salvage gems }

      top_level_keys.each do |tl_key|
        @my_item.send(tl_key).must_equal @my_item.response[tl_key.camelize(:lower)]
      end
    end
  end
end
