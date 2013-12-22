#! /usr/bin/env ruby

require 'test/unit'
require './ex3.rb'

class TestCambridge < Test::Unit::TestCase
  def test_cmarbdige_empty
    assert_equal("", "".cmarbdige)
  end
end
