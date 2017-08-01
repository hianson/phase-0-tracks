class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

	def speak(int)
		int.times do |i|
			puts "Woof!"
		end
	end

	def roll_over()
		puts "*rolls over*"
	end

	def dog_years(int)
		 return int * 7
	end

	def jump(int)
		puts "*jumps*" * int
	end

end

# Driver code:
fido = Puppy.new

fido.fetch("stick")
fido.speak(3)
fido.roll_over
puts fido.dog_years(5)
fido.jump(3)
