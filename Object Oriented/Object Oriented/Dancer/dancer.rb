#Name:Bryce Doughman
#Period:3°

class Dancer
	attr_reader :studio
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
		@studio = "Paly Dance"
	end

	def dab(num)
		result = ""
		num.times {result << "dab*"}
		result[0...-1]
	end

	def twist_and_shout(exclamation)
		"*twirl* #{exclamation} *twirl*"
	end

	def to_s
		"Name: #{@name}\nAge: #{@age}"
	end

end