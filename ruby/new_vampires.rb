# Check for Suspicious Allergies
def check_allergies(result)
  allergies_arr = []
  input = nil
  puts "Name any allergies, one at a time. Type 'done' when finished."
  until input == "done" || input == "sunshine"
    input = gets.chomp
    if input == "sunshine"
      allergies_arr << input
      return true
    end
    if input == "done"
      p allergies_arr
      break
    else
      allergies_arr << input
    end
  end
end

# Process Multiple Employees:
puts "How many employees will be processed?"
employees = gets.chomp.to_i
employees.times do |i|

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

  if had_birthday == 'n' || had_birthday == 'no'
    age += 1
  end

  age_right = age == Time.new.year - year
  likes_garlic = garlic == "y" || garlic == "yes"
  wants_insurance = insurance == "y" || insurance == "yes"
  result = nil

  if age_right && (likes_garlic || wants_insurance)
    result = "Probably not a vampire."
  else
    result = "Results inconclusive."
  end

  if !age_right && (!likes_garlic || !wants_insurance)
    result = "Probably a vampire."
  end

  if !age_right && !likes_garlic && !wants_insurance
    result = "Almost certainly a vampire."
  end

  if name == "drake cula" || name == "tu fang"
    result = "Definitely a vampire."
  end

if check_allergies(result)
  result = "Probably a vampire."
end

  p result
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
