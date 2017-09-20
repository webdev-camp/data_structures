require_relative 'item'

class LinkedList
  include Enumerable

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
  def delete_first
    @first = nil
  end
  def delete_last
    @first.delete_last
  end

  def each(&block)
    if (@first)
      @first.each(&block)
    end
  end

end
