module Dijkstra
  class Node
    attr_reader :id

    def initialize(id)
      @id = id
    end

    def neighbours(graph)
      graph.neighbours(id)
    end

    def ==(other)
      id == other.id
    end
  end
end