class Item
  attr :value, :next
  def initialize(val)
    @value = val
  end
  def push(val)
    if (@next)
      @next.push(val)
    else
      @next = Item.new(val)
    end
  end
  def pop
    return nil unless @next
    if @next.last?
      @next.value
      value = @next.value
      @next = nil
      return value
    else
      return @next.pop
    end
  end

  def last?
    if @next
      return false
    else
      return true
    end
  end
  def get_last
    if (@next)
      @next.get_last
    else
      @value
    end
  end
end
