require_relative 'file_helper.rb'

# Methods
def main
	ask_user_type
	ask_user_number
	cookie_number
	user_ready?
	preheating_message
	preheating
	putting_in_cookies_message
	minutes_cooked
	cooking
	cook_message
	final_messages
end

# These methods simply print the correct messages
		def preheating_message
			puts "Oven preheating..."
		end

		def putting_in_cookies_message
			puts "Putting in cookies now..."
		end

		def final_messages
			puts "Here are your #{@number} #{@type} cookies!"
			puts "That will be $#{@number * 10} please"
			puts "Thanks for being a fat lard dont eat them all yourself"
		end

		def cook_message
			if state == :doughy
				puts "Cookie dough is the best, isn't it?"
			elsif state == :almost_ready
				puts "Mushy is yummy"
			elsif state == :ready
				puts "A proper cookie for a proper person"
			else
				puts "I like your style, charcoal for the win"
			end
		end

# Informs user how many cookies on the trays and what cookies they baked
def cookie_number
  if @number <= 20
    puts "Tray created with #{@number} #{@type} cookies"
  elsif @number <= 40
    puts "Tray created with 20 #{@type} cookies"
    puts "Tray created with #{@number - 20} #{@type} cookies"
  elsif @number <= 60
    puts "2 trays created with 20 #{@type} cookies"
    puts "Tray created with #{@number - 40} #{@type} cookies"
  elsif @number <= 80
  	puts "3 trays created with 20 #{@type} cookies"
  	puts "Tray created with #{@number - 60} #{@type} cookies"
  end
end

# This method deciphers user preference for type of cookie
def get_type
  @type = ask_user_type
  while type == true
    ask_user_type
      if @type == "1" || @type == "2" || @type == "3"
        @type == true
      else
        puts "Sorry, that is not a cookie. Please enter 1, 2, or 3."
        @type == false
    end
  end
  return @type
end
# This method gets user preference for number of cookie
def ask_user_number
  puts "How many cookies would you bake?"
  puts "Each tray holds 20 cookies."
  puts "The oven can hold 4 trays"
  puts "(Maximum 80 cookies)"
  @number = gets.chomp.to_i
end
# This method gets user preference for type of cookie
def ask_user_type
  puts "What type of cookie would you like to bake?"
  puts "Chocolate chip"
  puts "Peanut butter"
  puts "Sugar"
  @type = gets.chomp.downcase.strip
end

# Asks the user if they are ready to continue
def user_ready?
	condition = false
	until condition == true
		puts "Would you like to put the tray(s) in the oven?"
		response = gets.chomp.downcase.strip
		case response
			when "yes"
				condition = true
			else
				condition = false
			end
	end
	condition
end

# preheats the oven
def preheating
	if @type == 1 || @type == "chocolate chip cookie"
		puts "Oven at 390 degrees"
	elsif @type == 2 || @type == "peanut butter cookie"
		puts "Oven at 360 degrees"
	else
		puts "Oven at 375 degrees"
	end
end

# informs the user how long they should cook the cookies
def cook_time
	if @type == 1 || @type == "chocolate chip cookie"
		puts "Recommended cook time: 15 minutes"
	elsif @type == 2 || @type == "peanut butter cookie"
		puts "Recommended cook time: 13 minutes"
	else
		puts "Recommended cook time: 16 minutes"
	end
end

# asks the user how long they want to cook the cookies
def minutes_cooked
	puts "How many minutes would you like to cook your cookies?"
	cook_time
	@time = gets.chomp.to_i
end

# Informs user the state of the finished cookies
def state
	if @time <= 7
			:doughy
		elsif @time < 14
			:almost_ready
		elsif @time <= 16
			:ready
		else
			:burned
		end
end

# informs user every minute the status and cooktime of the cookies
def cooking
	(minutes_cooked + 1).times do |num|
		puts "Cooking time: #{num} minutes"
		puts "\t\t\tStatus: #{state}"
	end
	return :Cookies_are_bad_for_your_health
end

main