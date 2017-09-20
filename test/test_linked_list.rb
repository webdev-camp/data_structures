require_relative 'helper'

class TestLinkedList < MiniTest::Test

  def setup
    @list = LinkedList.new
  end

  def load(num)
    (1..num).each {|v| @list.add_item(v)}
    return @list
  end

  def test_creation
    assert @list
  end

  def test_add
    @list.add_item(6)
    assert_equal 6, @list.first.value
  end

  def test_double_add
    assert_equal 1, load(2).first.value
    assert_equal 2, @list.first.next.value
  end

  def test_triple_add
    assert_equal 1, load(3).first.value
    assert_equal 2, @list.first.next.value
    assert_equal 3, @list.first.next.next.value
  end

  def test_first
    assert_equal 1, load(4).get_first
    assert_equal 4, @list.get_last
  end

  def test_delete
    load(4)
    @list.delete_last
    assert_equal 3, @list.get_last
    assert_equal 1, @list.get_first
  end

  def test_delete_two
    load(4)
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
    load(3)
    sum = 0
    @list.each{|val| sum += val }
    assert_equal 6, sum
  end

  def test_each_Multiply
    load(3)
    sum = 1
    @list.each{|v| sum *= v }
    assert_equal 6, sum
  end

  def test_no_nil_values
    load(10)
    assert_equal true, @list.all?
  end

  def test_reverse
    load(3)
    @reverse_list = LinkedList.new
    @list.reverse_each { |e| @reverse_list.add_item(e)  }
    assert_equal 1, @reverse_list.get_last
    assert_equal 3, @reverse_list.get_first
  end

  def test_to_array

  end
end
