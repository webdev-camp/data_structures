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


end
