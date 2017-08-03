# 6.7 Solo Challenge

# User can enter a word (or phrase) and another user attempts to guess that word
# Guesses are limited, max guesses are related to length of word
# Repeated guesses don't count (store previous guesses in array)
# Guesser gets continual feedback on state of word:
	# unicorn : _ _ _ c _ _ _
# Give congrats for winning or taunting message for losing

# our game should ...
# allow user 1 to enter a word and save it as a variable
# split user 1's word into an array of letters
# allow user 2 to enter (guess) a letter which matches letters in user 1's word
# use an array to keep track of which letters user 2 has guessed
# see if user 2's letter matches any letters in user 1's word
# have variables which keeps track of user 2's letter guesses and guess count (repeated guesses don't count)
# print the current state of user 2's guesses unicorn : _ _ _ c _ _ _
# print a congrats message for winning, and taunt message for losing

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'game'

describe Game do
	let(:game) { Game.new }

	it "allows user 1 to enter a word and save it as a variable" do
		# game = Game.new
		expect(game.enter_word()).to eq "test"
	end

	it "splits user 1's word into an array of letters" do
			
	end

	it "allows user 2 to enter a letter which matches letters in user 1's word" do
		expect(game.)
	end

	it "uses an array to keep track of which letters user 2 has guessed" do
	end

	it "sees if user 2's guess matches user 1's word" do
	end

	it "has variables which keeps track of user 2's letter guesses and guess count (repeated guesses don't count)" do
	end

	it "prints the current state of user 2's guesses" do
	end

	it "prints a congratulations or taunt message for winning or losing" do
	end
end
