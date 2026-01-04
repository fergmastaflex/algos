def sort(array)
  n = array.length - 1
puts "Array is #{n} long"
  0.upto(n) do |i|
    puts "Finding all items beyond #{i}"
    0.upto(n-i) do |j|
      puts "j = #{j}"
      if array[j+1] != nil && array[j] > array[j+1]
        new_value = array[j]
        array[j] = array[j+1]
        array[j+1] = new_value
      end
    end
  end
  puts array
end

array = [9,2,0,1,11,42,102,1,9999]

sort(array)
