require_relative '../solver'

describe Solver do
    before(:each) do
      solver = Solver.new
    end
  
    describe '#factorial' do
      it 'should only accpect positive integers' do
        expect { solver.factorial(-2) }.to raise_error(StandardError)
      end
    end
  end