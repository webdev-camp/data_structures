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
  def get_first
    @first.value
  end
  def get_last
    @first.get_last
  end
end
