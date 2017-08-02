module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	def self.yelling_happily(words)
		words + "!!!!!!!!" + " :)"
	end
end

p Shout.yell_angrily("grrr")
p Shout.yelling_happily("wrrrr")
