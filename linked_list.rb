require_relative "node"

class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if @head.nil?
      @head = value
      @tail = value
    else
      @tail.next_node = value
      @tail = value
      node.amount_of_nodes += 1
    end
  end

  def prepend(value)
    if @head.nil?
      @head = value
      @tail = value
    else
      node.next_node = @head
      @head = value
      node.amount_of_nodes += 1
    end
  end

  def size
    puts node.amount_of_nodes
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
  end

end