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
	let(:@goal_word) { "unicorn" }
	let(:letter) { "u" }

	it "checks if a guess was repeated" do
		expect(game.check_letter(letter)).to eq true
	end

	it "prints game state after each guess" do
		expect(game.check_game_state()).to be_a(String)
	end

	# it "Gets guess limit" do
	# 	expect(game.guess_limit(@goal_word)).to be_a(Integer)
	# end
	#
	# # it "Creates an array" do
	# # 	expect(game.guess_state()).to be_a(Array)
	# # 	expect(game.guess_state()).to eq ["_ _ _ _ _ _ _"]
	# # end
	#
	# it "Stores guesses" do
	# 	expect(game.store_guess(letter)).to be_a(Array)
	# 	expect(game.store_guess(letter)).to eq ["u"]
	# 	expect(game.store_guess(letter)).not_to eq ["a"]
	# 	expect(game.store_guess(letter)).not_to eq []
	# end
	#
	# it "Checks if a letter exists in another array" do
	# 	expect(game.check_guess(letter)).to eq true
	# 	expect(game.check_guess("a")).to eq false
	# end
	#
	# # it "Updates game state when letter is guessed correctly" do
	# # 	expect(game.update_game_state(letter)).to eq true
	# # end
	#
	# # Write RSpec HERE to update array if guess is correct
	#
	# it "Checks if user exceeds max guess attempts (player loses)" do
	# 	@guess_count = 10
	# 	expect(game.over_guess_limit?(@guess_count)).to eq true
	# 	expect(game.over_guess_limit?("unicorn".length + 1)).to eq true
	# 	expect(game.over_guess_limit?("unicorn".length - 1)).to eq false
	# end

	# it "Prints ending game message" do
	# 	expect(game.win()).to eq true
	# end

end
