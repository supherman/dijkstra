require 'spec_helper'

module Dijkstra
  describe Axis do
    let(:node_1) { Node.new(1) }
    let(:node_2) { Node.new(2) }
    let(:node_3) { Node.new(3) }

    describe '#include?' do
      subject { Axis.new(node_1, node_2, 10) }

      context 'When the axis include the node' do
        it 'returns true' do
          expect(subject.include?(node_1)).to be_true
          expect(subject.include?(node_2)).to be_true
        end
      end
      context 'When the axis does not include the node' do
        it 'returns false' do
          expect(subject.include?(node_3)).to be_false
        end
      end
    end
  end
end