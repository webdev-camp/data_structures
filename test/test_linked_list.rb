require_relative 'helper'

list = LinkedList.new
list.add_item(6)
second = list.add_item(7)
list.add_item(8)
list.add_item(9)

puts list.first.value
puts list.next.value
puts second.value
