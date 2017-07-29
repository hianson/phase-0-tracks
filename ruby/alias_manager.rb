# argument is first_last name
# swap first/last name: make last_first name equal to .split.reverse of first_last
# make an array of vowels [A, E, I, O, U]
# make an array of consonants [B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z]
# loop through each letter of last_first
# for each i:
	# if vowel: +1 position of vowel array
	# else if consonant: +1 position of consonant array

def alias_manager(first_last)
	last_first = first_last.split(" ").reverse.join(" ").downcase
	vowels = "aeiou" #handle 'u' as edge case
	consonants = "bcdfghjklmnpqrstvwxyz" #handle 'z' as edge case
	i = 0
	while i < last_first.length
		#if [i] is vowel...
    if last_first[i] == "u"
      last_first[i] = "a"
    elsif last_first[i] == "z"
      last_first[i] = "b"
	  elsif last_first[i].count("^#{vowels}").zero?
	    # we gonna change the vowel so get vowel index!
	    vowel_index = vowels.index("#{last_first[i]}") + 1
	    # change the old vowel in the string to the new one
	    last_first[i] = vowels[vowel_index]
    #else if [i] is a consonant...
    elsif last_first[i].count("^#{consonants}").zero?
      consonant_index = consonants.index("#{last_first[i]}") + 1
      last_first[i] = consonants[consonant_index]
		end
		i += 1
	end
	p last_first.split(" ").each {|word| word.capitalize!}.join(" ")
end

# user interface:
first_last = nil
loop do
  puts "Enter a real name to return a fake name (type 'quit' to quit):"
  first_last = gets.chomp
  break if first_last == 'quit'
  alias_manager(first_last)
  puts
end
