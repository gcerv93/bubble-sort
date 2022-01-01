def bubble_sort(array)
  # making sure to run the each_with_index enumerable for each element in the array
  for ele in array
    array.each_with_index do |num, idx|
      left = array[idx]
      right = array[idx+1]

      break if array[idx+1].nil?

      # this is where swapping of elements occurs
      if left > right
        array[idx] = right
        array[idx+1] = left
      else
        # next each_with_index iteration if no swap
        next
      end

    end

  end
end

# tests
p bubble_sort([4,3,78,2,0,2])
p bubble_sort([17,3,6,9,15,8,6,1,10])
p bubble_sort([92, 90, 82, 100, 71, 95, 15, 30, 11])
p bubble_sort([49, 35, 23, 30, 34, 43, 12, 38, 8])
p bubble_sort([0,3,6,9,5,8,6,1,10])