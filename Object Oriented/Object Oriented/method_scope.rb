
# COMMAND LINE ARGUMENTS
	# class Greeter
	
	# 	def greet(names)
	# 		names.each {|name| puts "Hi, #{name}"}
	# 	end
	
	# end
	
	# # DRIVER CODE
	# greeter = Greeter.new
	# greeter.greet(ARGV)	

###################################################

#  SCOPE OF INSTANCE METHODS
	
	class Gumpy

		attr_reader :power_level

		# Instance methods
		public
		# these methods can be called on an instance
		# Everything until next private will be public
		def initialize
			@power_level = 0
		end

		def red_potion
			num = get_rand(1, 5)
			num *= 3
			num += 2
			@power_level += num
		end

		def green_potion
			num = get_rand(3, 8)
			num *= 3
			num += 5 
		end

		# Helper methods
		# returns a random number
		private
		# private methods are methods that can only
		# be used by other instance methods.
		# They cannot be called on the instance.
		# Everything until nest public will be private
		def get_rand(min, max)
			rand(min..max)
		end

		def add_num(number_to_add)

		end

	end

	# DRIVER CODE
	gumpy = Gumpy.new
	p gumpy.get_rand(1, 5)
