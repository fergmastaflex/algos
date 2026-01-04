def sort(array)
  n = array.length - 1
  0.upto(n) do |i|
    0.upto(n-i) do |j|
      if array[j+1] != nil && array[j] > array[j+1]
        new_value = array[j]
        array[j] = array[j+1]
        array[j+1] = new_value
      end
    end
  end
  array
end

array = [9,2,0,1,11,42,102,1,9999]

sort(array)
