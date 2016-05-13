gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'example'

class PerfectNumberTest < Minitest::Test
  def test_aliquot_sum_zero
    assert_equal 0, PerfectNumber.new(1).aliquot_sum
  end

  def test_aliquot_sum_prime
    skip
    assert_equal 1, PerfectNumber.new(2).aliquot_sum
  end

  def test_aliquot_sum_multiple_divisors
    skip
    assert_equal 15, PerfectNumber.new(16).aliquot_sum
  end

  def test_aliquot_sum_large_num
    skip
    assert_equal 229, PerfectNumber.new(1115).aliquot_sum
  end

  def test_classify_deficient
    skip
    assert_equal 'deficient', PerfectNumber.new(13).classify
  end

  def test_classify_perfect
    skip
    assert_equal 'perfect', PerfectNumber.new(28).classify
  end

  def test_classify_abundant
    skip
    assert_equal 'abundant', PerfectNumber.new(12).classify
  end

  def test_bookkeeping
    skip
    assert_equal 1, PerfectNumber::VERSION
  end
end
