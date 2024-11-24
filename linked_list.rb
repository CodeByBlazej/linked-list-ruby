require_relative "node"

class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current_node = @head
      new_node = Node.new(value)
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current_head = Node.new(value)
      current_head.next_node = @head
      @head = current_head
    end
  end

  def size
    counter = 0
    current_node = @head
    
    while current_node != nil
      counter += 1
      current_node = current_node.next_node
    end

    puts counter
  end

  def head
    puts "\nHead node is: #{@head}, it's value is: #{@head.value}"
  end

  def tail
    if @head.nil?
      puts "This linked list is empty..."
    else
      current_node = @head

      while current_node.next_node != nil
        @tail = current_node.next_node
        current_node = current_node.next_node
      end

      puts "\nTail node is: #{@tail}, it's value is: #{@tail.value}"
    end
  end

  def at(index)
    counter = 0
    current_node = @head

    if index == 0
      puts "\nNode at index #{index} is: #{@head}, it's value is: #{@head.value}"
    end
    
    while current_node != nil
      counter += 1
      current_node = current_node.next_node
      if counter == index
        puts "\nNode at index #{index} is: #{current_node}, it's value is: #{current_node.value}"
      end
    end
  end

  def pop
    current_node = @head
    previous_node = nil

    while current_node.next_node != nil
      previous_node = current_node
      current_node = current_node.next_node
    end

    current_node = nil
    @tail = previous_node
    @tail.next_node = nil
  end

  def contains?(value)
    current_node = @head
    searched_value = nil

    if current_node.value == value
      searched_value = true
    else
      while current_node.next_node != nil
        if current_node.value == value || current_node.next_node.value == value
          searched_value = true
        else
          searched_value = false
        end
        current_node = current_node.next_node
      end
    end

    puts searched_value
  end

  def find(value)
    current_node = @head
    counter = 0

    if current_node.value == value
      puts "\nIndex of '#{value}' is 0"
    else
      while current_node != nil
        if current_node.value == value
          puts "\nIndex of '#{value}' is #{counter}"
          return
        elsif current_node.value != value && current_node.next_node == nil
          puts "\nIndex of '#{value}' is not found. '#{value}' doesn't exist."
          return
        else
          counter += 1
          current_node = current_node.next_node
        end
      end
    end
  end

  def insert_at(value, index)
    current_node = @head
    counter = 0
    new_node = Node.new(value)
    newly_added_node = nil
    temporary_node = nil

    while current_node != nil
      if index == counter
        temporary_node = current_node.next_node
        newly_added_node = new_node
        current_node.next_node = newly_added_node
        newly_added_node.next_node = temporary_node
      end

      counter += 1
      current_node = current_node.next_node
    end
  end

  def remove_at(index)
    current_node = @head
    counter = 0
    previous_node = nil

    while current_node != nil
      counter += 1
      previous_node = current_node
      current_node = current_node.next_node

      if index == counter
        previous_node.next_node = current_node.next_node
      end
    end
  end

  def to_s
    current_node = @head
    displayed_format = []

    while current_node != nil
      if current_node.next_node.nil?
        displayed_format << "( #{current_node.value} ) -> "
        displayed_format << 'nil'
        current_node = current_node.next_node
      else
        displayed_format << "( #{current_node.value} ) -> "
        current_node = current_node.next_node
      end
    end

    puts displayed_format.join('')
  end

end