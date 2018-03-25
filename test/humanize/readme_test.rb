require "test_helper"

class HumanizeNumber::Test < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::HumanizeNumber::VERSION
  end

  def test_non_number
    assert_equal "abc", HumanizeNumber.humanize("abc")
  end

  def test_simple_negative
    assert_equal "-20", HumanizeNumber.humanize(-20)
  end

  def test_simple_positive
    assert_equal "123", HumanizeNumber.humanize(123)
  end

  def test_thousands
    assert_equal "1.23k", HumanizeNumber.humanize(1234)
  end

  def test_multi_thousands
    assert_equal "12.3k", HumanizeNumber.humanize(12345)
  end

  def test_biggest_thousands
    assert_equal "123k", HumanizeNumber.humanize(123456)
  end

  def test_millions
    assert_equal "1.23m", HumanizeNumber.humanize(1234567)
  end

  def test_multi_millions
    assert_equal "12.3m", HumanizeNumber.humanize(12345678)
  end

  def test_biggest_millions
    assert_equal "123m", HumanizeNumber.humanize(123456789)
  end

  def test_billions
    assert_equal "1.23b", HumanizeNumber.humanize(1234567890)
  end

  def test_multi_billions
    assert_equal "12.3b", HumanizeNumber.humanize(12345678901)
  end

  def test_bigger_billions
    assert_equal "123b", HumanizeNumber.humanize(123456789012)
  end

  def test_insanely_big_billion
    assert_equal "1235b", HumanizeNumber.humanize(1234567890123)
    assert_equal "12346b", HumanizeNumber.humanize(12345678901234)
  end

  def test_negative_billion
    assert_equal "-1235b", HumanizeNumber.humanize(-1234567890123)
  end
end
