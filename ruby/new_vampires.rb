def gather_data()
	puts "What is your name?"
	name = gets.chomp.to_str
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	year = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp.to_str
	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp.to_str
end
