module Dijkstra
  class Graph
    attr_reader :nodes
    attr_reader :axis

    def initialize(graph_definition)
      @nodes = build_nodes(graph_definition)
      @axis  = build_axis(graph_definition)
    end

    def find(node_id)
      @nodes.find { |node| node.id == node_id }
    end

    private

    def build_nodes(definition)
      definition.keys.flatten.uniq.map do |node|
        Node.new(node)
      end
    end

    def build_axis(definition)
      axis = []
      definition.each do |key, value|
        axis << Axis.new(find(key.first), find(key.last), value)
      end
      axis
    end
  end
end