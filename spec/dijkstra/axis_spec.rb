require 'spec_helper'

module Dijkstra
  describe Axis do
    describe '#include?' do
      subject { Axis.new(Node.new(1), Node.new(2), 10) }

      context 'When the axis include the node' do
        it 'returns true' do
          expect(subject.include?(1)).to be_true
          expect(subject.include?(2)).to be_true
        end
      end
      context 'When the axis does not include the node' do
        it 'returns false' do
          expect(subject.include?(3)).to be_false
        end
      end
    end
  end
end