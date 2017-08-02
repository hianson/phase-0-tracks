class Santa
	attr_reader :reindeer_ranking
	attr_accessor :gender, :ethnicity, :age, :name

	def initialize(age, gender, ethnicity, eye_color)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@eye_color = eye_color
		@name = name
		@age = age
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def about()
		p "Name: #{@name}"
		p "Age: #{@age}"
		p "Gender: #{@gender}"
		p "Ethnicity: #{@ethnicity}"
		p "Eye color: #{@eye_color}"
	end

	def speak()
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def get_mad_at(reindeer)
		puts "Got mad at #{reindeer}!"
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
		@reindeer_ranking
	end

	def celebrate_birthday()
		puts "Happy bday!"
		@age += 1
	end

end

# Driver code
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
eye_color = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i], eye_color[i])
# end

# Totally Random Name generator
def name_generator()
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	new_name = ""
	# Pick a random name length:
	new_name_length = rand(3..9)
	new_name_length.times do |i|
	  new_name += alphabet.split("").sample
	end
	return new_name.capitalize
end

# p santas[4].age
# p santas[4].celebrate_birthday
# p santas[4].age
#
# p santas[4].reindeer_ranking
# p santas[4].get_mad_at("Vixen")
#
# p santas[4].gender
# p santas[4].gender = "polygenerous"
#
# p santas[4].ethnicity

# Release 4: Build Many, Many Santas
# Use loop do to create 100 Santa instances
santa_arr = []
1000.times do |i|
	santa_arr << Santa.new(rand(0..140), example_genders.sample, example_ethnicities.sample, eye_color.sample)
end

santa_arr[0].name = "The Real Song Singing Santa"

santa_arr.length.times do |i|
	puts "Santa ##{i}:"
	santa_arr[i].about
end
