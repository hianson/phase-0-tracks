#Create a method which adds items to array until user is "done"
def allergies()
  $allergies = Array.new
  j = 0
  puts "Please enter any allergies one at a time. Type \"done\" when finished."
  while j == 0
    puts "Allergies: #{$allergies}"
    item = gets.chomp
    if item == "done"
      j += 1
		elsif item == "sunshine"
	    $allergies << item
			$vampire_result = "Probably a vampire."
			j += 1
		else
	    $allergies << item
    end
  end
end

#Create method for employee survey to test for vampires
def vampireTest()
	$vampire_result = ""
	i = 0
	while i != $employees
		puts "Employee Survey ##{i + 1}:"
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
					#run allergy method
		#allergies()
					#check if age adds up or not
		if age == (2017 - birth_year)			#age is right!
			if garlic == "yes" || insurance == "yes"
				if name == "Drake Cula" || name == "Tu Fang"
					$vampire_result = "Definitely a vampire."
				else
					$vampire_result = "Probably not a vampire."
				end
			end
		elsif age != (2017 - birth_year)	#age is wrong!
			if garlic == "no" && insurance == "no"
				$vampire_result = "Almost certainly a vampire."
			elsif garlic == "no" || insurance == "no"
				vampire_result = "Probably a vampire."
			end
		else
			$vampire_result = "Results inconclusive."
		end

allergies()
				#print results at the end of the survey
		puts "\nResults:"
		puts "Name: #{name}"
		puts "Age: #{age}"
		puts "Birth year: #{birth_year}"
		puts "Likes garlic: #{garlic}"
		puts "Health insurance: #{insurance}"
		puts "Allergies: #{$allergies}"
		puts "#{$vampire_result}\n\n"
		i += 1
	end
end

#Get number of surveys to run
i = 0
while i == 0
	puts "How many employees will be processed?"
	$employees = gets.chomp.to_i
	if $employees > 0
		vampireTest()
		i += 1
	end
end
