class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		gender = @gender
		ethnicity = @ethnicity
		age = 0
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak()
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

# Driver code
testSanta = Santa.new
testSanta.speak
