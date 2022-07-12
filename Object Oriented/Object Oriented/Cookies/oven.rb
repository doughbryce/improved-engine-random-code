require_relative 'tray.rb'
require_relative 'peanut_butter_cookie.rb'
require_relative 'sugar_cookie.rb'
require_relative 'chocolate_chip_cookie.rb'

class Oven

		# getter and setter methods
	attr_accessor :temp, :trays, :minutes_cooked

		# constants
	CAPACITY = 4

		# defines attributes and populates @trays
		# double responsibility b/c it is initialize
	def initialize(trays = nil)
		@temp = 0
		@minutes_cooked = 0
		if trays == nil
			@trays = []
		else 
			@trays = trays.fetch(:trays, [])
		end
		if @trays.length > CAPACITY
			@trays = @trays[0..3]
		end
	end

		# adds trays to @trays
	def add_trays(tray)
		if @trays.length < CAPACITY
			@trays << tray
		end
	end

		# pre heats oven, sets @temp to argument passed
	def pre_heat(temp)
			@temp = temp
	end

		# cycles through each tray and cooks each cookie
	def cook
		@trays.each do |tray|
			tray.cookies.each do |cookie|
				if @temp == cookie.class::COOK_TEMP
					cookie.cook
				else
					cookie 
				end
			end
		end
	end

		# resets @temp to 0
	def turn_off
		@temp = 0
	end

		# resets @trays to an empty array
	def empty
		trays = @trays
		@trays = []
		trays
	end

end