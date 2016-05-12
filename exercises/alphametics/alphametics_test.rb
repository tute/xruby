#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'alphametics'

# Test data version:
# 507c88d Merge pull request #233 from s2tephen/patch-1

class AlphameticsTest < Minitest::Test
  def test_solve_short_puzzle
    assert_equal(
      Alphametics.solve("I + BB == ILL"),
      {"I"=>1, "B"=>9, "L"=>0},
    )
  end

  def test_solve_long_puzzle
    skip
    assert_equal(
      Alphametics.solve("SEND + MORE == MONEY"),
      {"S"=>9, "E"=>5, "N"=>6, "D"=>7, "M"=>1, "O"=>0, "R"=>8, "Y"=>2},
    )
  end

  def test_solve_puzzle_with_multiplication
    skip
    assert_equal(
      Alphametics.solve("IF * DR == DORI"),
      {"I"=>8, "F"=>2, "D"=>3, "R"=>9, "O"=>1},
    )
  end

  def test_solve_puzzle_with_exponents
    skip
    assert_equal(
      Alphametics.solve("PI * R ^ 2 == AREA"),
      {"P"=>9, "I"=>6, "R"=>7, "A"=>4, "E"=>0},
    )
  end


  # Don't forget to define a constant VERSION inside of Alphametics.
  def test_bookkeeping
    skip
    assert_equal 1, Alphametics::VERSION
  end
end
