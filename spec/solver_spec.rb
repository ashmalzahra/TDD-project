# frozen_string_literal: true

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

  describe '#reverse' do
    it 'should return reverse of the given string' do
      expect(@solver.reverse('Hello')).to eql('olleH')
    end
  end

  describe '#fizzbuzz ' do
    it 'sould take an integer argument int and return a string "fizz"  if int is divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eql('fizz')
    end
    it 'sould return a string "buzz"  if int is divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eql('buzz')
    end
    it 'sould return a string "fizzbuzz"  if int is divisible by 5 and 3' do
      expect(@solver.fizzbuzz(15)).to eql('fizzbuzz')
    end
    it 'sould return arg int itself if int does not satisfy any of above three conditions' do
      expect(@solver.fizzbuzz(7)).to eql(7)
    end
  end
end
