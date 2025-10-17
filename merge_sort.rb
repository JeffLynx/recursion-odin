def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  merge merge_sort(arr[0...mid]), merge_sort(arr[mid..-1])
end

def merge(left, right)
  result = []
  result << (left.first <= right.first ? left.shift : right.shift) until left.length == 0 || right.length == 0
  result + left + right
end

# p merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) => [0, 1, 1, 2, 3, 5, 8, 13]
