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
      puts "You already guessed the letter #{letter}."
    else
      if @secret_word.include?(letter)
        puts "You guessed correctly!"
      else
        puts "Wrong."
      end
      @guess_count += 1
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

  def check_guesses
    if @guess_count >= @guess_limit
      @is_over = true
      puts "Game over! Better luck next time!"
    end
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
  puts "#{game.guess_limit - game.guess_count} guesses left. Guess a letter:"
  letter = nil
  until /^[a-z]{1}$/.match(letter)
    letter = gets.chomp.downcase
  end
  game.check_letter(letter)
  game.check_game_state()
  game.check_guesses
end
