require 'tdd_example'
# Line 6 - create instantiation of TddExample and assign it to the variable calc. Allows Rspec to access methods defined in this class.
#Line 7v- a describe block that states which method we are testing (subtract_numbers)
#Lines 8 onwards - listing all tests that relate to this method. Each tesr defined by 'it' block.
describe TddExample do
  let (:calculator) { TddExample.new }
  describe '.subtract_numbers' do
    it 'returns the result of subtracting one from two' do
      result = calculator.subtract_numbers(2, 1)

      expect(result).to eq 1
    end

    it 'returns the result of subtracting one from three' do
      result = calculator.subtract_numbers(3, 1)

      expect(result).to eq 2
    end
  end
end
