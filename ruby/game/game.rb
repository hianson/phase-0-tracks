# CLASS DECLARATION
class Game
	attr_reader :guess_limit
  attr_accessor :secret_word, :guess_count, :is_over, :guess_arr

	def initialize(word)
		@secret_word = word.downcase
    @guess_limit = @secret_word.length * 2
    @guess_count = 0
    @guess_arr = []
    @is_over = false
	end

	def check_letter(letter)
	  # Check if user guessed letter already
		if @guess_arr.include?(letter)
		  puts "You already guessed this letter!"
		p @guess_arr
			# Or else add it to the guess_arr
		else
		  @guess_arr << letter
		p @guess_arr
		end
	end

	def check_game_state()
		# Print a display
		state = @secret_word.chars.map do |i|
			# Check for correctly guessed letters
			if @guess_arr.include?(i) == true
				i
			else
				# Print underscore for unguessed letters
				"_"
			end
		end
		# End game if all letters guessed
		if !state.include?("_")
			@is_over = true
			puts "You win!"
		end
		p state.join(' ')
	end

	def check_guesses(guesses)
		if guesses >= @guess_limit
			@is_over = true
			return true
		end
		return false
	end

end




# DRIVER CODE
puts "Enter a word to begin a word guessing game (letters only):"
word = nil
until /^[a-zA-Z]+$/.match(word)
  word = gets.chomp
end

game = Game.new(word)
puts "Word guessing game initialized ..."

while !game.is_over
  puts "Guess a letter:"
  letter = gets.chomp.downcase
  game.check_letter(letter)
  game.check_game_state()
  # Check if player lost (guesses > guess limit)
end
