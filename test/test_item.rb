require_relative 'helper'

class TestItem < MiniTest::Test

  def setup
    @item = Item.new(1)
  end

  def test_creation
    assert @item
    assert_nil @item.next
  end

  def test_get_last
    @item.push(2)
    assert_equal 2, @item.get_last
  end
end
