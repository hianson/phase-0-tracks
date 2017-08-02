class Santa
	attr_accessor :gender, :ethnicity, :age, :reindeer_ranking

	def initialize(gender, ethnicity, eye_color)
		@gender = gender
		@ethnicity = ethnicity
		@eye_color = eye_color
		@name = nil
		puts "Initializing Santa instance ..."
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def about()
		p "Gender: #{@gender}"
		p "Ethnicity: #{@ethnicity}"
		p "Eye color: #{@eye_color}"
		p "Name: #{@name}"
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

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
eye_color = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], eye_color[i])
end

# santas.each do |santa|
# 	Santa.speak
# end

# santas.each do |i|
# 	Santa.about()
# end
# santas[0] << name = "Santy"
# puts "#{santas[0]} says:"
# puts santas[0].speak

p santas[4].age
p santas[4].celebrate_birthday
p santas[4].age

p santas[4].reindeer_ranking
p santas[4].get_mad_at("Vixen")

p santas[4].gender
p santas[4].gender = "polygenerous"

p santas[4].ethnicity
