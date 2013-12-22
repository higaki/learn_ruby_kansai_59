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
end
