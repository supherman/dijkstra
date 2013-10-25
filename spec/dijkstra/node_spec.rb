require 'spec_helper'

module Dijkstra
  describe Node do
    subject { Node.new(1) }

    it 'has an id' do
      expect(subject.id).to_not be_nil
    end

    describe '#neighbours' do
      let(:graph) { double(Graph) }

      it 'has neighbours relative to a graph' do
        graph.should_receive(:neighbours).with(1).and_return [6,3,2]
        expect(subject.neighbours(graph)).to eq [6,3,2]
      end
    end

  end
end