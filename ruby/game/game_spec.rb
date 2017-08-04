# 6.7 Solo Challenge

# User can enter a word (or phrase) and another user attempts to guess that word
# Guesses are limited, max guesses are related to length of word
# Repeated guesses don't count (store previous guesses in array)
# Guesser gets continual feedback on state of word:
	# unicorn : _ _ _ c _ _ _
# Give congrats for winning or taunting message for losing

# our game should ...
# Take a string (goal_word)
# Get max_guesses as goal_word.length
# Create a guess_state - an array of underscores based on goal_word.length
# Let user guess a letter, and store it in an array of guesses
# Check if user's letter guess matches with goal_word
# Check if user has exceeded guess attempts
# Print congratulations for winning and a taunt for losing

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'game'

describe Game do
	let(:game) { Game.new }
	let(:@goal_word) { "test" }

	it "allows user 1 to enter a word and save it as a variable" do
		# game = Game.new
		@goal_word = "test"
		expect(game.enter_word()).to should be_a(String)
	end

	it "limits number of guesses" do
		@goal_word = "test"
		expect(game.max_guesses?(@goal_word)).to eq 4
	end

end
