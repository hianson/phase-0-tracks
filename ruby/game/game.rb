# CLASS DECLARATION
class Game
	attr_accessor :goal_word, :guess_arr

	def initialize
		# unicorn placeholder
		@goal_word = "unicorn"
	end

	def enter_word(word)
		# Placeholder for gets.chomp
		@goal_word = "string"
	end

	def max_guesses?(n)
		max_guesses = @goal_word.length
	end

	def guess_state()
		guess_state = []
		guess_state << "_ " * (@goal_word.length - 1) + "_"
	end

	def store_guess(letter)
		@guess_arr = []
		@guess_arr << letter
	end

	def check_guess(letter)
		check_arr = @goal_word.split("")
		if check_arr.include?(letter)
			return true
		else
			return false
		end
	end

end




# DRIVER CODE
