# Release 0: Implement a Simple Search
# search_array method takes in an array and integer as arguments
# If integer exists in array
	# return index of that integer
# Otherwise:
	# return nil

	arr = [69, 420, 1337, 80085]

	def search_array(arr, int)
	    i = 0
	    while i < arr.length
	      # if int matches the item at the position of loop
	      if int == arr[i]
	        # print the index of int where the match occurred
	        p i
	      end
	      i += 1
	    end
	    return nil
	end

	search_array(arr, 1)

# Release 1: Calculate Fibonacci Numbers
# Method takes a number of Fibonacci terms to generate (1 argument), returns array of the terms

def fib(n)
  fib_arr = [0, 1] # Add stuff to arr so that we can get [-2], [-1] index later
  i = 0
  while i < n - 2 # The -2 is to account for the 2 items already in fib_arr
    fib_term = fib_arr[-2] + fib_arr[-1]
    fib_arr << fib_term
    i += 1
  end
  return fib_arr
end

# Driver code - returns true! :)
fib(100)[-1] == 218922995834555169026

# Release 2: Sort an Array
# 1: Bubble sort
# 2: There are many visualization tools which help with understanding algorithms!
# 3: The number of sorting algos is overwhelming and is like seeing the Ruby documentation for data types for the first time. I know there a more options than I know what to do with right now but i'm confident i'll slowly be able to chisel out the algorithms' purposes. I'm looking forward to taking sorting algorithms piece-by-piece!
# 4: Pseudocode Bubble sort:
# Bubble sort should compare a loop index and switch places with an item if the loop index is bigger than that item

# initialize loop
# for each i:
	# if i is greater than the next item arr[i + 1], switch places
# return the sorted array

def bubble_sort(arr)
	# init loop
	loop do
		# set variable to know whether to break out of loop or not
		swapped = false
		# init loop length and variable i for each iteration
		(arr.length - 1).times do |i|
			if arr[i] > arr[i + 1]
				# swap places if i > i + 1
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				# change variable or else i will break and will halt further swaps. swapped will stay false if no more swaps are necessary!
				swapped = true
			end
		end
		break if swapped == false
	end
	return arr
end

arr = [5, 1, 6, 2, 7, 3, 8, 4]
p bubble_sort(arr)
