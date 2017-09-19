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
  def get_last
    if (@next)
      @next.get_last
    else
      @value
    end
  end
end
