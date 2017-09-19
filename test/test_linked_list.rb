require_relative 'helper'

class TestLinkedList < MiniTest::Test

  def setup
    @list = LinkedList.new
  end

  def test_creation
    assert @list
  end

  def test_add
    @list.add_item(6)
    assert_equal 6, @list.first.value
  end

  def test_double_add
    @list.add_item(8)
    @list.add_item(9)
    assert_equal 8, @list.first.value
    assert_equal 9, @list.first.next.value
  end

  def test_triple_add
    @list.add_item(8)
    @list.add_item(9)
    @list.add_item(10)
    assert_equal 8, @list.first.value
    assert_equal 9, @list.first.next.value
    assert_equal 10, @list.first.next.next.value
  end

  def test_six_add
    @list.add_item(1)
    @list.add_item(2)
    @list.add_item(3)
    @list.add_item(4)
    @list.add_item(5)
    @list.add_item(6)
    assert_equal 1, @list.first.value
    assert_equal 2, @list.first.next.value
    assert_equal 6, @list.first.next.next.next.next.next.value
  end

  def test_first
    @list.add_item(1)
    @list.add_item(2)
    @list.add_item(3)
    @list.add_item(4)
    assert_equal 1, @list.get_first
    assert_equal 4, @list.get_last
  end

end
