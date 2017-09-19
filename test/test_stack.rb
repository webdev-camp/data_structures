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
end
