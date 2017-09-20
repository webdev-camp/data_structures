require_relative 'helper'

class TestItem < MiniTest::Test

  def setup
    @item = Item.new(1)
  end

  def test_creation
    assert @item.last_item?
  end

  def test_get_last
    @item.push(2)
    assert_equal 2, @item.get_last
  end

  def test_pop
    assert @item.pop.nil?
  end

  def test_pop_one
    @item.push(1)
    one = @item.pop
    assert_equal(1,one)
  end

end
