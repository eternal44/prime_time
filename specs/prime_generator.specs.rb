require 'minitest/autorun'
require_relative '../timesTable.rb'

describe TimesTable do
  before do
    @table = TimesTable.new
  end

  describe 'create prime table' do
    it 'should check if a number is prime' do
      @table.is_prime?(4).must_equal false
      @table.is_prime?(5).must_equal true
      @table.is_prime?(11).must_equal true
      @table.is_prime?(125).must_equal false
    end

    it 'should generate an array of primes' do
      @table.prime_array(3).must_equal [2,3,5]
    end

    it 'should create an array of prime numbers' do
      @table.product_array(3).must_equal [
        [0,2,3,5],
        [2,4,6,10],
        [3,6,9,15],
        [5,10,15,25]
      ]
    end
  end
end
