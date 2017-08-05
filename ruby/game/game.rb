# CLASS DECLARATION
class Game
	attr_reader :guess_limit
  attr_accessor :secret_word, :guess_count, :is_over

	def initialize
		@secret_word = "test".downcase
    @guess_limit = @secret_word.length * 2
    @guess_count = 0
    @guess_arr = []
    @is_over = false
	end

	def check_letter(letter)
		@guess_arr = [letter]
		if @guess_arr.include?(letter)
			return true
		else
			return false
		end
		p @guess_arr
	end

	def check_game_state
		state = @secret_word.chars.map do |i|
			if @guess_arr.include?(i) == true
				i
			else
				"_"
			end
		end
		if !state.include?("_")
			@is_over = true
			puts "You win!"
		end
		p state.join(' ')
		puts
	end


	# def enter_word(word)
	# 	# Placeholder for gets.chomp
	# 	@goal_word = "unicorn"
	# end
	#
	# def guess_limit(n)
	# 	guess_limit = @goal_word.length
	# end
	#
	# # def guess_state()
	# # 	# Create an array of underscores _ equal to @goal_word.length
	# # 	guess_state = []
	# # 	guess_state << "_" * (@goal_word.length - 1) + "_"
	# # end
	#
	# def store_guess(letter)
	# 	@guess_arr = []
	# 	@guess_arr << letter
	# end
	#
	# def check_letter(letter)
	# 	array_to_check = @goal_word.split("")
	# 	if array_to_check.include?(letter)
	# 		return true
	# 	else
	# 		return false
	# 	end
	# end
	#
	# def update_game_state(letter)
	# 	# Loop through game_state and replace _ with letter
	# 	@game_state.each do |i|
	#
	# 	end
	# 	# Delete item at index game_state.delete_at(2)
	# 	@game_state.delete_at(index)
	# 	# Add letter to the same index in game_state
	# end
	#
	# def over_guess_limit?(guess_count)
	# 	guess_limit = @goal_word.length
	# 	if guess_count > guess_limit
	# 		# Game over - player loses, print taunt message
	# 		return true
	# 	else
	# 		# Game continues
	# 		return false
	# 	end
	# end

	# def game_over()
	#
	# end

end




# DRIVER CODE
