require_relative 'helper'

class TestItem < MiniTest::Test

  def setup
    @item = Item.new(1)
  end

  def test_creation
    assert @item.last?

  end

  def test_pop
    assert_equal nil, @item.pop

    #code
  end

  def test_pop_one
    @item.push(1)
    one = @item.pop
    assert_equal(1,one)
    #code
  end
end
