require_relative '../solver'

describe Solver do
    before(:each) do
      @solver = Solver.new
    end
  
    describe '#factorial' do
      it 'should only accpect positive integers' do
        expect { @solver.factorial(-2) }.to raise_error(StandardError)
      end
      it 'should return 1 for given 0' do
        expect(@solver.factorial(0)).to eq 1
      end
      it 'should return 24 for given integer 4' do
        expect(@solver.factorial(4)).to eq 24
      end
    end
  end