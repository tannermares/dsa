#!/usr/bin/env ruby
# frozen_string_literal: true

require 'test/unit'
# require 'stringio'
require_relative '../sorting'

# Test Bubble Sort
class BubbleSortTest < Test::Unit::TestCase
  def test_bubble_sort
    assert_equal([], Sorting.bubble_sort([]))
    assert_equal([1, 2, 3, 4], Sorting.bubble_sort([1, 2, 3, 4]))
    assert_equal([1, 2, 3, 4], Sorting.bubble_sort([4, 3, 2, 1]))
    assert_equal([1, 2, 3, 4], Sorting.bubble_sort([1, 3, 4, 2]))
  end

  # def test_counting_sort
  #   assert_equal([], Sorting.counting_sort([]))
  #   assert_equal([1, 2, 3, 4], Sorting.counting_sort([1, 2, 3, 4]))
  #   assert_equal([1, 2, 3, 4], Sorting.counting_sort([4, 3, 2, 1]))
  #   assert_equal([1, 2, 3, 4], Sorting.counting_sort([1, 3, 4, 2]))
  # end

  # def test_heap_sort
  #   assert_equal([1, 2, 3, 4], Sorting.heap_sort([4, 3, 2, 1]))
  # end

  def test_insertion_sort
    assert_equal([], Sorting.insertion_sort([]))
    assert_equal([1, 2, 3, 4], Sorting.insertion_sort([1, 2, 3, 4]))
    assert_equal([1, 2, 3, 4], Sorting.insertion_sort([4, 3, 2, 1]))
    assert_equal([1, 2, 3, 4], Sorting.insertion_sort([1, 3, 4, 2]))
  end

  # def test_merge_sort
  #   assert_equal([1, 2, 3, 4], Sorting.merge_sort([4, 3, 2, 1]))
  # end

  # def test_quick_sort
    # assert_equal([], Sorting.quick_sort([]))
    # assert_equal([1, 2, 3, 4], Sorting.quick_sort([1, 2, 3, 4]))
    # assert_equal([1, 2, 3, 4], Sorting.quick_sort([4, 3, 2, 1]))
    # assert_equal([1, 2, 3, 4], Sorting.quick_sort([1, 3, 4, 2]))
  # end

  # def test_radix_sort
  #   assert_equal([1, 2, 3, 4], Sorting.radix_sort([4, 3, 2, 1]))
  # end

  def test_selection_sort
    assert_equal([], Sorting.selection_sort([]))
    assert_equal([1, 2, 3, 4], Sorting.selection_sort([1, 2, 3, 4]))
    assert_equal([1, 2, 3, 4], Sorting.selection_sort([4, 3, 2, 1]))
    assert_equal([1, 2, 3, 4], Sorting.selection_sort([1, 3, 4, 2]))
  end

  # def test_shell_sort
  #   assert_equal([1, 2, 3, 4], Sorting.shell_sort([4, 3, 2, 1]))
  # end
end
