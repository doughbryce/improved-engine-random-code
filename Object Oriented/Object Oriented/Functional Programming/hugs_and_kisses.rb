#Mei Leng and Bryce Doughman
#Period 3
#Hugs and Kisses



#write a method "Hugs_and_kisses"
#take one argument (a word)
#return a string
#return xoxo... for the number of letters in the argument
#should not put anything to the screen

#Method
def hugs_and_kisses(user_word)
	response = ""
	index = 0
	while index < user_word.length
		if index.even?
			response << "x"
		else 
			response << "o"
		end
	index += 1
	end	 
response
end 


#Driver Code
puts "Pick a word"
user_word = gets.chomp
puts hugs_and_kisses(user_word)
