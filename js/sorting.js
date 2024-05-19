#!/usr/bin/env node

function bubbleSort(arr) {
  const n = arr.length
  let sorted = true

  for (i = 0; i < n - 1; ++i) {
    for (j = 0; j < n - i - 1; ++j) {
      if (arr[j] > arr[j + 1]) {
        const tmp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = tmp

        sorted = false
      }
    }

    if (sorted) return arr
  }

  return arr
}

function countingSort(arr) {}

function heapSort(arr) {}

function insertionSort(arr) {
  const n = arr.length

  for (i = 1; i < n; ++i) {
    const value = arr[i]
    let hole = i

    while (hole > 0 && arr[hole - 1] > value) {
      arr[hole] = arr[hole - 1]
      hole -= 1
    }

    arr[hole] = value
  }

  return arr
}

function mergeSort(arr) {}

function quickSort(arr) {}

function radixSort(arr) {}

function selectionSort(arr) {
  const n = arr.length

  for (i = 0; i < n - 1; ++i) {
    jMin = i

    for (j = i + 1; j < n; ++j) {
      if (arr[jMin] > arr[j]) jMin = j
    }

    const tmp = arr[i]
    arr[i] = arr[jMin]
    arr[jMin] = tmp
  }

  return arr
}

function shellSort(arr) {}

module.exports = {
  bubbleSort,
  countingSort,
  heapSort,
  insertionSort,
  mergeSort,
  quickSort,
  radixSort,
  selectionSort,
  shellSort,
}
