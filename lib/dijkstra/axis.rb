module Dijkstra
  class Axis
    attr_reader :nodes
    attr_reader :value

    def initialize(node_a, node_b, value)
      @nodes = [node_a, node_b]
      @value = value
    end

    def include?(node)
      nodes.include?(node)
    end
  end
end