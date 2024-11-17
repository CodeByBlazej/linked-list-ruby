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
    end
  end

  def prepend(value)
    if @head.nil?
      @head = value
      @tail = value
    else
      node.next_node = @head
      @head = value
    end
  end

end