class Node
  attr_accessor :next_node, :value, :amount_of_nodes

  def initialize
    @next_node = nil
    @value = nil
    @amount_of_nodes = 0
  end
end