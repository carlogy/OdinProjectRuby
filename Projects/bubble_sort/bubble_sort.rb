def bubble_sort(arr)
  n = arr.length
  if n < 2
    return arr
  end

  loop do
    swapped = false
    (n - 1 ).times do |i|
      if arr[i] > arr[i + 1]
      arr[i], arr[i + 1 ] = arr[i + 1], arr[i]
      swapped = true
      end
  end
    break if not swapped
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])
