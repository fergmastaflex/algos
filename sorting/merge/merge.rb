def sort(array)
  return array if array.length == 1
  mid = ((array.length - 1) / 2).round
  left = array[0..mid]
  right = array[(mid + 1)..-1]
  sorted_right = sort(right)
  merge(sorted_left, sorted_right)
end

def merge(left, right)
  return left if right.empty?
  return right if left.empty?
  lowest_number = left.first <= right.first ? left.shift : right.shift
  next_lowest = merge(left, right)
  [lowest_number] + next_lowest
end

test_array = Array.new(10) { rand(0..500) }
puts sort(test_array)
