# Encrypt Method
def encrypt(user_input)
	index = 0
		while index < user_input.length
			if user_input[index] != " "
				if user_input[index] == "z"
					user_input[index] = "a"
				else
					user_input[index] = user_input[index].next
				end
			end
			index += 1
		end
	user_input
end

# Driver Code
puts encrypt("lala")

def decrypt(user_input)
	index = 0
	while index < user_input.length
		user_input[index] = previous_letter(user_input[index])
		index += 1
	end
	user_input
end


def previous_letter(letter)
	if letter == " "
		return " "
	elsif letter == "a"
		return "z"
	else
		return (letter.ord - 1).chr
	end
end

p decrypt("abcdefghijklmnopqrstuvwxyz")
