require_relative 'item'

class LinkedList
  attr :first
  def add_item(val)
    if (@first)
       @first.push(val)
    else
      @first = Item.new(val)
    end
  end
end
