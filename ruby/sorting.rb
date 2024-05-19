#!/usr/bin/env ruby
# frozen_string_literal: true

# Most common sorting algorithms
module Sorting
  class << self
    def bubble_sort(arr)
      n = arr.length
      sorted = true

      for i in 0..n - 1
        for j in 0..n - i - 1
          next if j + 1 == n
          next unless arr[j] > arr[j + 1]

          tmp = arr[j]
          arr[j] = arr[j + 1]
          arr[j + 1] = tmp
          sorted = false
        end

        return arr if sorted
      end

      arr
    end

    def counting_sort(arr)
    end

    def heap_sort(arr)
    end

    def insertion_sort(arr)
      n = arr.length

      for i in 0..n - 1
        value = arr[i]
        hole = i

        while hole > 0 && arr[hole - 1] > value
          arr[hole] = arr[hole - 1]
          hole -= 1
        end

        arr[hole] = value
      end

      arr
    end

    def merge_sort(arr)
    end

    def quick_sort(arr, arr_start = 0, arr_end = arr.length - 1)
      def partition(arr, arr_start, arr_end)
        pivot = arr[arr_end]
        pivot_index = arr_start

        for i in arr_start..arr_end
          next unless arr[i] <= pivot

          swap(arr, pivot_index, i)
          pivot_index += 1
        end

        swap(arr, pivot_index, arr_end)
        pivot_index
      end

      def swap(arr, pivot_index, index)
        tmp = arr[index]
        arr[index] = arr[pivot_index]
        arr[pivot_index] = tmp
      end

      return unless arr_start < arr_end

      pivot_index = partition(arr, arr_start, arr_end)

      quick_sort(arr, arr_start, pivot_index - 1) + quick_sort(arr, pivot_index + 1, arr_end)
    end

    def radix_sort(arr)
    end

    def selection_sort(arr)
      n = arr.length

      for i in 0..n - 1
        j_min = i

        for j in i + 1..n
          next if j == n
          next unless arr[j_min] > arr[j]

          j_min = j
        end

        tmp = arr[i]
        arr[i] = arr[j_min]
        arr[j_min] = tmp
      end

      arr
    end

    def shell_sort(arr)
    end
  end
end
