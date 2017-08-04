# 6.7 Solo Challenge

# User can enter a word (or phrase) and another user attempts to guess that word
# Guesses are limited, max guesses are related to length of word
# Repeated guesses don't count (store previous guesses in array)
# Guesser gets continual feedback on state of word:
	# unicorn : _ _ _ c _ _ _
# Give congrats for winning or taunting message for losing

# our game should ...
# Enter a string (goal_word)
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
	let(:@goal_word) { "unicorn" }
	let(:letter) { "u" }

	it "Enter a string" do
		# game = Game.new
		expect(game.enter_word(@goal_word)).to be_a(String)
	end

	it "Gets guess limit" do
		expect(game.guess_limit(@goal_word)).to be_a(Integer)
	end

	it "Creates an array" do
		expect(game.guess_state()).to be_a(Array)
		expect(game.guess_state()).to eq ["_ _ _ _ _ _ _"]
	end

	it "Stores guesses" do
		expect(game.store_guess(letter)).to be_a(Array)
		expect(game.store_guess(letter)).to eq ["u"]
		expect(game.store_guess(letter)).not_to eq ["a"]
		expect(game.store_guess(letter)).not_to eq []
	end

	it "Checks if a letter exists in another array" do
		expect(game.check_guess(letter)).to eq true
		expect(game.check_guess("a")).to eq false
	end

	it "Checks if user exceeds max guess attempts" do
		@guess_count = 10
		expect(game.over_guess_limit?(@guess_count)).to eq true
		expect(game.over_guess_limit?("unicorn".length + 1)).to eq true
		expect(game.over_guess_limit?("unicorn".length - 1)).to eq false
	end

end
