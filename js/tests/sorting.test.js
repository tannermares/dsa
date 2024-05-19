#!/usr/bin/env node --test

const { describe, test } = require('node:test')
const assert = require('assert')
const {
  bubbleSort,
  countingSort,
  heapSort,
  insertionSort,
  mergeSort,
  quickSort,
  radixSort,
  selectionSort,
  shellSort,
} = require('../sorting.js')

describe('sorting', () => {
  test('bubbleSort', () => {
    assert.deepStrictEqual([], bubbleSort([]))
    assert.deepStrictEqual([1, 2, 3, 4], bubbleSort([1, 2, 3, 4]))
    assert.deepStrictEqual([1, 2, 3, 4], bubbleSort([4, 3, 2, 1]))
    assert.deepStrictEqual([1, 2, 3, 4], bubbleSort([1, 3, 4, 2]))
  })
  // test('countingSort', () => {
  //   assert.strictEqual([1, 2, 3, 4], countingSort([4, 3, 2, 1]))
  // })
  // test('heapSort', () => {
  //   assert.strictEqual([1, 2, 3, 4], heapSort([4, 3, 2, 1]))
  // })
  test('insertionSort', () => {
    assert.deepStrictEqual([], insertionSort([]))
    assert.deepStrictEqual([1, 2, 3, 4], insertionSort([1, 2, 3, 4]))
    assert.deepStrictEqual([1, 2, 3, 4], insertionSort([4, 3, 2, 1]))
    assert.deepStrictEqual([1, 2, 3, 4], insertionSort([1, 3, 4, 2]))
  })
  // test('mergeSort', () => {
  //   assert.strictEqual([1, 2, 3, 4], mergeSort([4, 3, 2, 1]))
  // })
  // test('quickSort', () => {
  //   assert.strictEqual([1, 2, 3, 4], quickSort([4, 3, 2, 1]))
  // })
  // test('radixSort', () => {
  //   assert.strictEqual([1, 2, 3, 4], radixSort([4, 3, 2, 1]))
  // })
  test('selectionSort', () => {
    assert.deepStrictEqual([], selectionSort([]))
    assert.deepStrictEqual([1, 2, 3, 4], selectionSort([1, 2, 3, 4]))
    assert.deepStrictEqual([1, 2, 3, 4], selectionSort([4, 3, 2, 1]))
    assert.deepStrictEqual([1, 2, 3, 4], selectionSort([1, 3, 4, 2]))
  })
  // test('shellSort', () => {
  //   assert.strictEqual([1, 2, 3, 4], shellSort([4, 3, 2, 1]))
  // })
})
