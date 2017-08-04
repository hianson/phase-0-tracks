# CLASS DECLARATION
class Game
	attr_accessor :goal_word

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
	end

	def store_guesses()
		guess_arr = []
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
