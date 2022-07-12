# Bryce Doughman
# Period 3

def fibonacci(n)
a = 0
b = 1
n.times do
temp = a
a = b
b = temp + b
end
a
end

def fibonacci_recursive(number)
if number == 0
	return 0
elsif number == 1
	return 1
else
	return fibonacci_recursive(number - 1) + (fibonacci_recursive(number - 2))
end
end

p fibonacci_recursive(34)
# Algorithm
# - get the fib
# 
# 
# 
# 
# 
# 