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
    assert_equal 9, @list.next.value
  end

end






list = LinkedList.new
second = list.add_item(7)
list.add_item(9)

# puts list.next.value
# puts second.value
