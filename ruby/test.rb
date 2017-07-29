def test(arr)
  i = 0
	swapped = false
  while i < arr.length - 1
		if swapped == false
	    if arr[i].to_i > arr[i + 1].to_i
	      arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swapped = true
	    end
			i += 1
		end
    i += 1
  end
  p arr
end

# [3, 2, 1]
# [2, 3, 1]

arr = [3, 2, 1]
test(arr)
