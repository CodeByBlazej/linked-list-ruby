require_relative "linked_list"

list = LinkedList.new

# list.append('dog')
# list.append('cat')
# list.append('parrot')

list.prepend('dog')
list.prepend('cat')
list.prepend('parrot')
list.prepend('hamster')
list.prepend('snake')
list.prepend('turtle')

list.size
list.head
list.tail
list.at(1)

list.contains?('dog')
list.contains?('cat')
list.contains?('parrot')
list.contains?('turtle')
list.contains?('elephant')

list.find('parrot')
puts list
list.insert_at('elephant', 1)
puts list

list.remove_at(2)

puts list
list.pop
list.size
list.tail

puts list