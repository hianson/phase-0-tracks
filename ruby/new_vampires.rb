# Gather data
	puts "What is your name?"
	name = gets.chomp.to_str.downcase
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	year = gets.chomp.to_i
	puts "Have you had your birthday this year?"
	had_birthday = gets.chomp.to_str.downcase
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp.to_str.downcase
	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp.to_str.downcase

age_right = nil
wants_garlic = nil
wants_insurance = nil
result = nil

# Calculate age being right if age matches year they were born
# Current time - Year they were born = Age
if had_birthday == 'n' || had_birthday == 'no'
  age += 1
end

p age
