#! /usr/bin/env ruby

require 'test/unit'
require './ex3.rb'

class TestCambridge < Test::Unit::TestCase
  def test_cmarbdige_empty
    assert_equal("", "".cmarbdige)
  end

  def test_cmarbdige_1character
    assert_equal("x", "x".cmarbdige)
  end

  def test_cmarbdige_2characters
    assert_equal("xy", "xy".cmarbdige)
  end

  def test_cmarbdige_3characters
    assert_equal("xyz", "xyz".cmarbdige)
  end

  def test_cmarbdige_4characters
    assert_equal("acbd", "abcd".cmarbdige)
  end

  def test_cambridge_have_no_punctuations
    assert_equal("acbd", LearnRubyKansai::cambridge("abcd", []))
  end

  def test_cambridge_have_a_punctuation
    assert_equal("acbd.egfh", LearnRubyKansai::cambridge("abcd.efgh", ['.']))
  end

  def test_cambridge_without_punctuations
    assert_equal("acbd", LearnRubyKansai::cambridge("abcd", ['.']))
  end

  def test_cambridge_have_many_punctuations
    assert_equal(
      "acbd.egfh,ikjl.monp", 
      LearnRubyKansai::cambridge("abcd.efgh,ijkl.mnop", %w[, .]))
  end

  def test_cambridge_multiple_words
    assert_equal(
      "acbd egfh ikjl", LearnRubyKansai::cambridge("abcd efgh ijkl", []))
  end

  def test_cambridge_multiple_spaces_are_combined_into_one
    assert_equal("abc def", LearnRubyKansai::cambridge("abc  def", []))
  end

  def test_cambridge_tab_are_replaced_to_a_space
    assert_equal("abc def", LearnRubyKansai::cambridge("abc\tdef", []))
  end

  def test_cambridge_newline_are_replaced_to_a_space
    assert_equal("abc def", LearnRubyKansai::cambridge("abc\ndef", []))
  end
end
