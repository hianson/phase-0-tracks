# argument is first_last name
# swap first/last name: make last_first name equal to .split.reverse of first_last
# make an array of vowels [A, E, I, O, U]
# make an array of consonants [B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z]
# loop through each letter of last_first
# for each i:
	# if vowel: +1 position of vowel array
	# else if consonant: +1 position of consonant array

	def alias_manager(first_last)
		last_first = first_last.split(" ").reverse.join(" ")
	end

	p alias_manager("Sgt Pepperino")
