require "minitest/test"
require "minitest/autorun"
require "minitest/pride"
require "./lib/credit_check"

class CreditCheckTest < Minitest::Test

  def test_it_exists
    credit = CreditCheck.new(5541808923795240)
    assert_instance_of CreditCheck, credit
  end

  def test_check_length
    credit = CreditCheck.new(4024007136512380)
    expected = 16
    actual = credit.length

    assert_equal expected, actual
  end

  def test_it_is_valid
    credit = CreditCheck.new(6011797668867828)
    expected = "Valid"
    actual = credit.validation

    assert_equal expected, actual
  end

  def test_if_invalid
    credit = CreditCheck.new(60117976688687280)
    expected = "Invalid"
    actual = credit.validation

    assert_equal expected, actual
  end

  def test_if_valid_american_express
    credit = CreditCheck.new(342804633855673)
    expected = "Valid"
    actual = credit.validation
  end

  def test_times_2_everyother_digit
    credit = CreditCheck.new(5541801923795240)
    expected = [5, 10, 4, 2, 8, 0, 1, 18, 2, 6, 7, 18, 5, 4, 4, 0]
    actual = credit.every_even

    assert_equal expected, actual
  end

  def test_times_2_everyother_odd_digit
    credit = CreditCheck.new(342804633855673)
    expected = [6, 4, 4, 8, 0, 4, 12, 3, 6, 8, 10, 5, 12, 7, 6]
    actual = credit.every_odd

    assert_equal expected, actual
  end
end
