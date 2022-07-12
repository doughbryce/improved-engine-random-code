class Cookie
attr_reader :minutes_cooked
	COOK_TIME = 10
	BURN_THRESHOLD = 2
	COOK_TEMP = 400

	def initialize
		@minutes_cooked = 0
	end

	def cook
		@minutes_cooked += 1
	end

	def state(num)
		num = @minutes_cooked
		if @minutes_cooked <= self.class::COOK_TIME / 2
			:doughy
		elsif @minutes_cooked < self.class::COOK_TIME
			:almost_ready
		elsif @minutes_cooked <= self.class::COOK_TIME + self.class::BURN_THRESHOLD
			:ready
		else
			:burned
		end
	end

end