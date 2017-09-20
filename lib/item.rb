class Item
  attr :value, :next

  def initialize(val)
    @value = val
  end

  def push(val)
    if last_item?
      @next = Item.new(val)
    else
      @next.push(val)
    end
  end

  def pop
    return nil unless @next
    if @next.last_item?
      @next.value
      value = @next.value
      @next = nil
      return value
    else
      return @next.pop
    end
  end

  def last_item?
    if @next
      return false
    else
      return true
    end
  end

  def get_last
    if last_item?
      @value
    else
      @next.get_last
    end
  end

  def delete_last
    return nil unless @next
    if @next.last_item?
      @next = nil
    else
      @next.delete_last
    end
  end

  def each(&block)
    block.call @value
    if (@next)
      @next.each(&block)
    end
  end
end
