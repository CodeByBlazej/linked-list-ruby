class Node
  attr_accessor :next_node, :value, :amount_of_nodes

  def initialize(value)
    @next_node = nil
    @value = value
    # @amount_of_nodes = 0
  end
end