module Dijkstra
  class Calculator
    attr_reader :graph
    attr_reader :origin_node
    attr_reader :target_node

    def initialize(graph, origin_node, target_node)
      @graph, @origin_node, @target_node = graph, origin_node, target_node
    end

    def perform
      initialize_algorithm
    end

    private

    def initialize_algorithm
      @current   = origin_node
      @visited = [origin_node]
      solution = []
      while @current != target_node do
        shortest = shortest_node(@current)
        solution << shortest
        @visited << shortest
        @current = shortest
      end
      solution
    end

    def tentantive_distances(node)
      graph.neighbours(node).map do |neighbour|
        next if @visited.include? neighbour
        [neighbour, (graph.distance_between(node, neighbour) + shortest_distance(neighbour))]
      end.compact
    end

    def shortest_distance(node)
      graph.neighbours(node).map do |neighbour|
        next if @visited.include? neighbour
        graph.distance_between(node, neighbour)
      end.compact.min.to_i
    end

    def shortest_node(node)
      distance = tentantive_distances(node)
      distance.sort { |x,y| x.last <=> y.last }.first.first
    end
  end
end