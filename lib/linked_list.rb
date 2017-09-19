require_relative 'item'

class LinkedList
  attr :first, :next
  def add_item(val)
    if (@first)
       @next = Item.new(val)
    else
      @first = Item.new(val)
    end
  end
end
