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



puts list