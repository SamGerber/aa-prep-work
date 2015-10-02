def bubble_sort(arr)
  loop do
    swapped = false
    (arr.count - 1).times do |index|
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index] 
        swapped = true
      end
    end
    break if swapped == false
  end
  arr
end
