require "kata_two"
require "test/unit"

class KataTwoTest < Test::Unit::TestCase

  def setup
    # Set up some test conditions here
    # This will be invoked before each test
  end

  def teardown
    # This will be invoked after each test
    # Use to close connections, etc.
  end

  def test_chop
    assert_equal(-1, KataTwo.chop(3, []))
    assert_equal(-1, KataTwo.chop(3, [1]))
    assert_equal(0,  KataTwo.chop(1, [1]))
    #
    assert_equal(0,  KataTwo.chop(1, [1, 3, 5]))
    assert_equal(1,  KataTwo.chop(3, [1, 3, 5]))
    assert_equal(2,  KataTwo.chop(5, [1, 3, 5]))
    assert_equal(-1, KataTwo.chop(0, [1, 3, 5]))
    assert_equal(-1, KataTwo.chop(2, [1, 3, 5]))
    assert_equal(-1, KataTwo.chop(4, [1, 3, 5]))
    assert_equal(-1, KataTwo.chop(6, [1, 3, 5]))
    #
    assert_equal(0,  KataTwo.chop(1, [1, 3, 5, 7]))
    assert_equal(1,  KataTwo.chop(3, [1, 3, 5, 7]))
    assert_equal(2,  KataTwo.chop(5, [1, 3, 5, 7]))
    assert_equal(3,  KataTwo.chop(7, [1, 3, 5, 7]))
    assert_equal(-1, KataTwo.chop(0, [1, 3, 5, 7]))
    assert_equal(-1, KataTwo.chop(2, [1, 3, 5, 7]))
    assert_equal(-1, KataTwo.chop(4, [1, 3, 5, 7]))
    assert_equal(-1, KataTwo.chop(6, [1, 3, 5, 7]))
    assert_equal(-1, KataTwo.chop(8, [1, 3, 5, 7]))
  end

  def test_chop_with_large_array
    large_array_length = 34517 #or any arbitrary large number
    count_by = 4 #or any even, non-zero number
    large_array = []
    (1..large_array_length).each{|x| large_array << x * count_by}
    (1..large_array_length).each{|x| assert_equal( (x - 1), KataTwo.chop(x * count_by, large_array))}
    (1..large_array_length).each{|x| assert_equal( -1, KataTwo.chop(x * count_by + 1, large_array))}
  end

end

