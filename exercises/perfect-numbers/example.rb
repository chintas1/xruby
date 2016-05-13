class PerfectNumber
  VERSION = 1
  attr_accessor :num
  
  def initialize(num)
    raise "#{num} is not a natural number." if num < 0
    @num = num
  end


  def classify
    aliquot_sum == num ? "perfect" : aliquot_sum < num ? "deficient" : 'abundant'
  end


  def aliquot_sum
    factors = get_divisors
    factors.reduce(:+)
  end

  
  private

  def get_divisors
    return [0] if num <= 1
    divisors = []

    (1..Math.sqrt(num)).each do |n|
      if num % n == 0
        divisors << n
        divisors << num/n unless (n == 1) || (num/n) == n
      end
    end

    divisors

  end

end