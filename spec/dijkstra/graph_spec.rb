require 'spec_helper'

module Dijkstra
  describe Graph do
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

    subject { Graph.new(graph_definition) }

    it 'builds a nodes and axis through a hash input' do
      expect(subject.nodes).to have(6).items
      expect(subject.axis).to have(9).items
      expect(subject.axis.first).to be_a_kind_of Axis
      expect(subject.nodes.first).to be_a_kind_of Node
    end

    describe '#find' do
      it 'finds a node by its id' do
        expect(subject.find(1)).to be_a_kind_of Node
      end

      it 'return nil if a node is not found' do
        expect(subject.find(10)).to be_nil
      end
    end

    describe '#neighbours' do
      it 'returns a list of neighbour nodes for a given node' do
        expect(subject.neighbours(1).sort).to eq [2,3,6]
        expect(subject.neighbours(2).sort).to eq [1,3,4]
        expect(subject.neighbours(3).sort).to eq [1,2,4,6]
        expect(subject.neighbours(4).sort).to eq [2,3,5]
        expect(subject.neighbours(5).sort).to eq [4,6]
        expect(subject.neighbours(6).sort).to eq [1,3,5]
      end
    end
  end
end