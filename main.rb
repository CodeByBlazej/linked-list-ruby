require_relative "linked_list"

list = LinkedList.new

# list.append('dog')
# list.append('cat')
# list.append('parrot')

list.prepend('dog')
list.prepend('cat')
list.prepend('parrot')

list.size
list.head
list.tail
list.at(1)

list.contains?('dog')
list.contains?('cat')
list.contains?('parrot')
list.contains?('elephant')

puts list
list.pop
list.size
list.tail



puts list