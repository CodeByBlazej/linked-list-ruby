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
    counter = 1
    current_node = @head
    
    while current_node.next_node != nil
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

    while current_node.next_node != nil
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

  def to_s
    p @head
    # current_node = @head
    # while current_node.next_node != nil
    #   p @value
    # end
    # puts @head.value
  end

end