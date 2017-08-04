# CLASS DECLARATION
class Game
	attr_accessor :goal_word, :guess_arr, :guess_limit, :guess_count

	def initialize
		# unicorn placeholder
		@goal_word = "unicorn"
		@guess_count = 0
	end

	def enter_word(word)
		# Placeholder for gets.chomp
		@goal_word = "string"
	end

	def guess_limit(n)
		guess_limit = @goal_word.length
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
		array_to_check = @goal_word.split("")
		if array_to_check.include?(letter)
			return true
		else
			return false
		end
	end

	def over_guess_limit?(guess_count)
		guess_limit = @goal_word.length
		if guess_count > guess_limit
			# Player loses
			return true
		else
			# Player wins
			return false
		end
	end

end




# DRIVER CODE
