# Release 0: Implement a Simple Search
# search_array method takes in an array and integer as arguments
# If integer exists in array
	# return index of that integer
# Otherwise:
	# return nil

	arr = [69, 420, 1337, 80085]

	def search_array(arr, int)
	  #if int is found in arr
	    #return index of int

	    i = 0
	    while i < arr.length
	      # if int matches the position of loop
	      if int == arr[i]
	        puts "int exists"
	      else
	        puts "int doesn't exist"
	      end
	      i += 1
	    end
	end

	search_array(arr, 420)
