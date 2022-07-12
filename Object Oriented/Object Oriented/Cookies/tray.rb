require_relative 'cookie.rb'

class Tray

	CAPACITY = 20

	attr_accessor :cookies

	def initialize(args = nil)
		if args == nil
			@cookies = []
		else
			@cookies = args.fetch(:cookies, [])
		end
		if @cookies.length > CAPACITY
			@cookies = @cookies[0..19]
		end
	end

	def add_cookie(type_of_added_cookie)
		if @cookies.length < CAPACITY
			@cookies << type_of_added_cookie
			return true
		else
			return false
		end
	end

	def empty
		tray = @cookies
		@cookies = []
		tray
	end

end