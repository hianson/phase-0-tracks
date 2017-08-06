# 6.7 Solo Challenge

# Methods in game will allow us to:
# Initialize word game with variables for:
	# secret_word, guess_limit, guess_count, guess_arr, is_over
# Check if a guess was repeated so it won't count against the user
	# Print previous guesses after each guess
# Give continual feedback after each guess
	# If all letters are guessed correctly, print congratulatory message
# Check if user has lost after each guess if guess_count >= guess_limit
	# Print taunt message for losing

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'game'

describe Game do
	let(:game) { Game.new }

	it "checks if a guess was repeated" do
		expect(game.check_letter("a")).to eq true
		expect(game.check_letter("u")).to eq false
	end

	it "prints game state after each guess" do
		expect(game.check_game_state(["u"])).to be_a(String)
		expect(game.check_game_state(["u"])).to include "u"
		expect(game.check_game_state(["q"])).to start_with "_ "
		expect(game.check_game_state(["q"])).to include "_ _ _ _ _ _ _"
		expect(game.check_game_state(["n"])).to end_with "n"
		expect(game.check_game_state(["u"])).to_not include "a"
	end

	it "checks if guess_count exceeds guess_limit" do
		expect(game.check_guesses(100)).to eq true
		expect(game.check_guesses(1)).to eq false
	end

end
