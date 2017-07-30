# argument is first_last name
# swap first/last name: make last_first name equal to .split.reverse of first_last
# make an array of vowels [A, E, I, O, U]
# make an array of consonants [B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z]
# loop through each letter of last_first
# for each i:
	# if vowel: +1 position of vowel array
	# else if consonant: +1 position of consonant array

def alias_manager(first_last)
  $fake_name = ""
	last_first = first_last.split(" ").reverse.join(" ").downcase
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	i = 0
	while i < last_first.length
		# handle 'u' and 'z' as edge cases
    if last_first[i] == "u"
      last_first[i] = "a"
    elsif last_first[i] == "z"
      last_first[i] = "b"
      # check if i is vowel
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
	return $fake_name = last_first.split(" ").each {|word| word.capitalize!}.join(" ")
end

first_last = nil
results = {}
# user interface:
loop do
  puts "Enter a real name to return a fake name (type 'quit' to quit):"
  first_last = gets.chomp
    if first_last == 'quit'
      # print list of: "Vussit Gimodoe is actually Felicia Torres"
      results.each do |k, v|
        k = k.split(" ").each {|word| word.capitalize!}.join(" ")
        puts "\"#{k}\"" + ' is actually ' + "\"#{v}\""
      end
    break
    end
  alias_manager(first_last)
  p results[first_last] = $fake_name
  puts
end
