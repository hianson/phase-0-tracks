# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
# 	def self.yelling_happily(words)
# 		words + "!!!!!!!!" + " :)"
# 	end
# end
#
# p Shout.yell_angrily("grrr")
# p Shout.yelling_happily("wrrrr")

module Shout
	def yell_angrily(words)
		words + "!!!" + " >:("
	end
end

class Mom
	include Shout
end

class Wookie
	include Shout
end

# Driver code
wookie = Wookie.new
p wookie.yell_angrily("RRRRRRRRrrrrrg")

mom = Mom.new
p mom.yell_angrily("take out da trash dis instinct anton")
