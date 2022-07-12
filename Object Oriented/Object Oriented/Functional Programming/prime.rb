#Name:Bryce Doughman
#Period:Period 3

#Write your code below. Feel free to write multiple helper methods to
#support your prime_factors method. Remember, each method should only
#do one thing. So if you start to see that your prime_factors method
#is doing too much, break some of your code out into a different method.

def prime_factors(number)
number_array = [1..number].to_a
result = []
index = 0
while index < number_array.length
	if number % number_array[index] == 0
		result << number_array[index]
	end
	index += 1
end
end

def helper(number)

end