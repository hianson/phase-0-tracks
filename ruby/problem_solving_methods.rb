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
