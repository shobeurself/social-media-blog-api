require "test_helper"

class PlaygroundTest < ActiveSupport::TestCase
  def test_with_a_perfect_square
    assert_equal 3, Math.sqrt(9)
  end
  def test_with_zero
    assert_equal 0, Math.sqrt(0)
  end
  def test_with_non_perfect_square
    assert_in_delta 1.4142, Math.sqrt(2), 0.0001
  end
  def test_with_negative_number
    assert_raises(Math::DomainError) { Math.sqrt(-3) }
  end
end
