class Stack
  def push(val)
    if (@first)
       @first.push(val)
    else
      @first = Item.new(val)
    end
  end

  def pop
    return nil unless @first
    if @first.last_item?
      @first.value
      value = @first.value
      @first = nil
      return value
    else
      return @first.pop
    end
  end
end
