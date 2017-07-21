puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance? (yes/no)"
insurance = gets.chomp

if age == (2017 - birth_year)			#age is right
	if garlic == "yes" || insurance == "yes"
		if name == "Drake Cula" || name == "Tu Fang"
			puts "Definitely a vampire."
		else
			puts "Probably not a vampire."
		end
	end
elsif age != (2017 - birth_year)			#age is wrong
	if garlic == "no" && insurance == "no"
		puts "Almost certainly a vampire."
	elsif garlic == "no" || insurance == "no"
		puts "Probably a vampire."
	end
else
	puts "Results inconclusive."
end

puts "Results:"
puts "Name: #{name}"
puts "Age: #{age}"
puts "Birth year: #{birth_year}"
puts "Likes garlic: #{garlic}"
puts "Health insurance: #{insurance}"
