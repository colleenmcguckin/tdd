require 'rspec'
 
class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end
 
  def subtract(number_one, number_two)
    return number_one - number_two
  end
 
  def multiply(number_one, number_two)
    return number_one * number_two
  end
 
  def divide(dividend, divisor)
    return dividend / divisor
  end
 
  def square(number)
    return number * number
  end
 
  def power(number, exponent)
    return number ** exponent
  end

  def double(number)
    return number + number
  end

  def half(number)
    return number / 2
  end

  def triple(number)
    return number*3
  end
end
 
# Tests below:
 
RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calc = Calculator.new
      sum = calc.add(4, 6)
      expect(sum).to eq(10)
    end
  end
 
  describe '#square' do
    it 'should return the square of a number' do
      calc = Calculator.new
      square = calc.square(10)
      expect(square).to eq(100)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calc = Calculator.new
      multiply = calc.multiply(10,10)
      expect(multiply).to eq(100)
    end
  end

  describe '#divide' do
    it 'should return the qoutient without dividend' do
      calc = Calculator.new
      divide = calc.divide(10, 10)
      expect(divide).to eq(1)
    end

    it 'should return the qoutient with the dividend' do
      calc = Calculator.new
      divide = calc.divide(10, 3)
      expect(divide).to eq(3.33)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calc = Calculator.new
      subtract = calc.subtract(10,9)
      expect(subtract).to eq(1)
    end
  end

  describe '#power' do
    it 'should return the result of a number raised to the power determined by a second number' do
      calc = Calculator.new
      power = calc.power(2,2)
      expect(power).to eq(4) 
    end
  end

  describe '#double' do
    it 'should return the result of a number added to itself' do
      calc = Calculator.new
      double = calc.double(2)
      expect(double).to eq(4)
    end
  end

  describe '#half' do
    it 'should return half of the original number' do
      calc = Calculator.new
      half = calc.half(2)
      expect(half).to eq(1)
    end
  end

  describe '#triple' do
    it 'should return three times the original number' do
      calc = Calculator.new
      triple = calc.triple(2)
      expect(triple).to eq(6)
    end
  end

end