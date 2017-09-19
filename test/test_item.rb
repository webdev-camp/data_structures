require_relative 'helper'

class TestItem < MiniTest::Test

  def setup
    @item = Item.new(1)
  end

  def test_creation
    assert @item
  end
end
