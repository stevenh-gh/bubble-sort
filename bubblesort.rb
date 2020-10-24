def bubble_sort(arr)
  sorted_array = Array.new(arr)

  sorted = false
  until sorted
    sorted = true
    sorted_array[0...-1].each_with_index do |ele, index|
      if ele > sorted_array[index + 1]
        sorted_array[index], sorted_array[index + 1] = sorted_array[index + 1], sorted_array[index]
        sorted = false
      end
    end
  end
  sorted_array
end

nums = [4, 3, 78, 2, 0, 2]
p bubble_sort(nums)
