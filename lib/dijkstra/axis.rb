module Dijkstra
  class Axis
    attr_reader :nodes
    attr_reader :value

    def initialize(node_a, node_b, value)
      @nodes = [node_a, node_b]
      @value = value
    end

    def include?(node_id)
     !!nodes.find { |node| node.id == node_id }
    end
  end
end