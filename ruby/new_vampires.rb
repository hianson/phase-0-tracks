# Gather data
# 	puts "What is your name?"
# 	name = gets.chomp.to_str.downcase
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

if had_birthday == 'n' || had_birthday == 'no'
  age += 1
end

age_right = age == Time.new.year - year
likes_garlic = garlic == "y" || garlic == "yes"
wants_insurance = insurance == "y" || insurance == "yes"
result = nil

if age_right && (likes_garlic || wants_insurance)
  puts "age is right, and either likes_garlic or wants_insurance is true"
  result = "Probably not a vampire."
end

if !age_right && (!likes_garlic || !wants_insurance)
  puts "age is wrong, and either likes_garlic or wants_insurance is false"
  result = "Probably a vampire."
end

if !age_right && !likes_garlic && !wants_insurance
  result = "Almost certainly a vampire."
end

if name == "drake cula" || name == "tu fang"
  result = "Definitely a vampire."
end
