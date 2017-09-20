require_relative 'helper'

class TestStack < MiniTest::Test

  def setup
    @stack = Stack.new
  end

  def test_creation
    assert @stack
  end

  def test_push
    @stack.push(1)
    one = @stack.pop
    assert_equal(1,one)
  end

  def test_second_push
    @stack.push(1)
    @stack.push(2)
    two = @stack.pop
    assert_equal(2,two)
    one = @stack.pop
    assert_equal(1,one)
  end

  def test_iterator_one
    @stack.push(10)
    sum = 0
    @stack.each{|value| sum = sum + value}
    assert_equal 10, sum
  end

  def test_iterator_two
    @stack.push(10)
    @stack.push(10)
    sum = 0
    @stack.each{|value| sum = sum + value}
    assert_equal 20, sum
  end
  
  def test_sum
    @stack.push(10)
    @stack.push(10)
    assert_equal 20, @stack.sum
  end



end
