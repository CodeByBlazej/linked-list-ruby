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
      current_node = @head
      new_node = Node.new(value)
      # while current_node.next_node != nil
      #   current_node.new_node = current_node.new_node.new_node
      # end
      current_node.next_node = current_node
      current_node = new_node

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
    puts @head
  end

  def tail
    puts @tail
  end

  def at(index)
    if index == 0
      puts @head
    elsif index == 1
      puts @head.next_node
    else 
      until index do 
        puts node.next_node * index
      end
    end
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