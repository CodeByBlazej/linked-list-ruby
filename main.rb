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

list.find('parrot')
puts list
list.insert_at('elephant', 1)
puts list

list.remove_at(1)

puts list
list.pop
list.size
list.tail



puts list