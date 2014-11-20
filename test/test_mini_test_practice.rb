require 'minitest_helper'
require 'mini_test_practice'
require 'mini_test_practice/odd'

class TestMiniTestPractice < MiniTest::Unit::TestCase

  include Odd

  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def setup
    @instance = ::MiniTestPractice::Main.new
  end

  def test_it_has_check_number_method
    assert_respond_to(@instance, :check_number?)
  end

  def test_it_returns_true_when_it_is_for_digits_and_even_number
    assert @instance.check_number?("2000")
  end

  def test_it_returns_false_when_it_starts_0
    assert !@instance.check_number?("0111")
  end

  def test_it_returns_false_when_it_is_not_4digits
    assert !@instance.check_number?("0")
    assert !@instance.check_number?("01")
    assert !@instance.check_number?("012")
  end

  def test_it_returns_false_when_it_odd_number
    assert !@instance.check_number?("1")
  end

  def test_it_has_enough_length_method
    assert_respond_to(@instance, :enough_length?)
  end

  def test_it_returns_true_when_enough_length
    assert @instance.enough_length?("123")
    assert @instance.enough_length?("1234")
    assert @instance.enough_length?("12345")
    assert @instance.enough_length?("123456")
    assert @instance.enough_length?("1234567")
    assert @instance.enough_length?("12345678")
  end

  def test_it_returns_false_when_it_2digits
    assert !@instance.enough_length?("12")
  end

  def test_it_returns_false_when_it_9digits
    assert !@instance.enough_length?("123456789")
  end

  def test_it_has_divide_method
    assert_respond_to(@instance, :divide)
  end

  def test_it_returns_valid_result
    assert_equal(3, @instance.divide(9, 3))
  end

  def test_it_raise_error
    assert_raises(RuntimeError) {
      @instance.divide(10, 0)
    }
  end

  def test_it_has_fizz_buzz_method
    assert_respond_to(@instance, :fizz_buzz)
  end

  def test_it_returns_fizz
    assert_equal("Fizz", @instance.fizz_buzz(9))
  end

  def test_it_returns_buzz
    assert_equal("Buzz", @instance.fizz_buzz(10))
  end

  def test_it_returns_fizz_buzz
    assert_equal("FizzBuzz", @instance.fizz_buzz(30))
  end

  def test_it_out_Hello_to_stdout
    out, err = capture_io do
      @instance.hello
    end
    assert_equal("Hello\n", out)
  end

end

