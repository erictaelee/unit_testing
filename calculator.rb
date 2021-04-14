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
  def sqaure(number)
    return number * number
  end
  def power(number, exponent)
    return number ** exponent
  end
end
RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(10,9)
      expect(result).to eq(1)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.subtract(-20,-2)
      expect(result).to eq(-18)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(3,7)
      expect(result).to eq(21)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.multiply(-3,-7)
      expect(result).to eq(21)
    end
  end

  describe '#divide' do
    it 'should return quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(10,5)
      expect(result).to eq(2)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.divide(10,-5)
      expect(result).to eq(-2)
    end
  end

  describe '#sqaure' do
    it 'should return sqaure of two numbers' do
      calculator = Calculator.new
      result = calculator.sqaure(4)
      expect(result).to eq(16)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.sqaure(-4)
      expect(result).to eq(16)
    end
  end

  describe '#power' do
    it 'should return power of two numbers' do
      calculator = Calculator.new
      result = calculator.power(2,3)
      expect(result).to eq(8) 
    end     
  end
end