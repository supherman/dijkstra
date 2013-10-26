require 'spec_helper'

module Dijkstra
  describe Calculator do
    let(:graph_definition) do
      {
          [1,2] => 7,
          [1,6] => 14,
          [1,3] => 9,
          [6,5] => 9,
          [3,6] => 2,
          [3,4] => 11,
          [2,3] => 10,
          [2,4] => 15,
          [4,5] => 6
      }
    end

    let(:node_1) { Node.new(1) }
    let(:node_2) { Node.new(2) }
    let(:node_3) { Node.new(3) }
    let(:node_4) { Node.new(4) }
    let(:node_5) { Node.new(5) }
    let(:node_6) { Node.new(6) }

    let(:graph) { Graph.new(graph_definition) }

    it 'find the shortest path to a given node' do
      expect(Calculator.new(graph, node_1, node_5).perform).to eq([node_3, node_6, node_5])
    end
  end
end
