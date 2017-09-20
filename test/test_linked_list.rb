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

  def test_delete
    @list.add_item(1)
    @list.add_item(2)
    @list.add_item(3)
    @list.add_item(4)
    @list.delete_last
    assert_equal 3, @list.get_last
    assert_equal 1, @list.get_first
  end

  def test_delete_two
    @list.add_item(1)
    @list.add_item(2)
    @list.add_item(3)
    @list.add_item(4)
    @list.delete_last
    @list.delete_last
    assert_equal 2, @list.get_last
    assert_equal 1, @list.get_first

  end

  def test_delete_first
    @list.add_item(1)
    @list.delete_first
    assert @list.first.nil?
  end

  def test_each
    @list.add_item(1)
    @list.add_item(2)
    @list.add_item(3)
    sum = 0
    @list.each{|val| sum += val }
    assert_equal 6, sum
  end

  def test_each_Multiply
    @list.add_item(1)
    @list.add_item(2)
    @list.add_item(3)
    sum = 1
    @list.each{|v| sum *= v }
    assert_equal 6, sum
  end

  def test_no_nil_values
    [1..10].each {|v| @list.add_item(v)}
    assert_equal true, @list.all?

  end
end
