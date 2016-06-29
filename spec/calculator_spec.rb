require "calculator.rb"

describe Calculator do 
  let(:c) {Calculator.new}

  describe '#add' do 
  	it 'adds positive numbers' do
  	  expect(c.add(1,2)).to eq(3)
  	end
  	it 'adds negative numbers' do 
      expect(c.add(-1,-2)).to eq(-3)
    end
    it 'adds float numbers' do
      expect(c.add(1.0,2.0)).to eq(3.0)
    end
  end

  describe '#subtract' do
  	it 'subtracts positve numbers' do
  	  expect(c.subtract(2,1)).to eq(1)
  	end
  	it 'subtracts negative numbers' do
  	  expect(c.subtract(-2,-1)).to eq(-1)
  	end
  	it 'subtracts float numbers' do
      expect(c.subtract(2.0,1.0))to eq(1)
    end 
  end

  describe '#multiply' do
  	it 'multplies two positive numbers' do
  	  expect(c.multiply(2,3)).to eq(6)
  	end
  	it 'multiplies two negative numbers' do 
  	  expect(c.multiply(-2,-3)).to eq(6)
  	end
  	it 'multiplies one negative and one positive number' do
  	  expect(c.multiply(2,-3)).to eq(-6)
  	end
  end

  describe '#divide' do
  	it 'divdes two numbers' do 
   	  expect(c.divide(4,2)).to eq(2)
   	end
   	it 'cannot divide by zero' do 
   	  expect(c.divide(4,0)).to raise_error(ArgumentError)
   	end
   end

   describe '#pow' do
   	it 'raises positive power' do
      expect(c.pow(3,3)).to eq(27)
    end
    it 'raises negative power' do 
      expect(c.pow(10,-1)).to eq(0.1)
    end
    it 'raises floats' do
      expect(c.pow(3.0,3.0)).to eq(27.0)
    end
  end

  describe '#sqrt' do
  	it 'squares a positive number' do
  	  expect(c.sqrt(4)).to eq(2)
  	end
  	it 'cannot sqrt negative numbers' do 
  	  expect(c.sqrt(-4)).to raise_error(ArgumentError)
  	end
  end




