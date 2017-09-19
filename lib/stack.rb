class Stack
  def push(val)
    if (@first)
       @first.push(val)
    else
      @first = Item.new(val)
    end
  end

  def pop
    if (@first)
      @first.pop
    else
      return nil
    end

  end
end
