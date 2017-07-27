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
#

def fib(n)
  fib_arr = [0, 1]
  i = 0
  while i < n - 2
    fib_term = fib_arr[-2] + fib_arr[-1]
    p fib_arr << fib_term
    i += 1
  end
end
