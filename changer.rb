require 'rspec'

class ChangeMachine
  def change(cents)
    coins = []
    while cents > 0
      if cents >= 25
        next_coin_to_be_dispensed = 25
      elsif cents >= 10
        next_coin_to_be_dispensed = 10
      elsif cents >= 5
        next_coin_to_be_dispensed = 5
      else 
        next_coin_to_be_dispensed = 1
    end
    cents -= next_coin_to_be_dispensed
    coins -= next_coin_to_be_dispensed
  end
end

RSpec.describe ChangeMachine do
  
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect (machine.change(1)).to eq([1])
    end
    it 'should return [1, 1] when given 2' do
      machine = ChangeMachine.new
      expect (machine.change(1)).to eq([1, 1])
    end
    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect (machine.change(5)).to eq([5])
    end
    it 'should return [5, 1] when given 6' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5, 1])
    end
    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end
  end
end