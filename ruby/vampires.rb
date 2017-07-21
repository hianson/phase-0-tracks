puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance? (Y/N)"
insurance = gets.chomp

if age == (2017 - year)
	if garlic == "yes" || insurance == "yes"
		puts "Probably not a vampire."
	end
else
	puts "AGE WRONG!"
end
