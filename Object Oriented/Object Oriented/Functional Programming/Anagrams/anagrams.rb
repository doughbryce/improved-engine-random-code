#See the project description for details. 
# Write comments above each method
#that describes what it does.
# Bryce Doughman
# Period 3

# Arguments: String, String
# Returns: Boolean
# This method will check to see if two 
# specified words are anagrams of one another
def anagrams?(word, possible_anagram)
	standard_form(word) == standard_form(possible_anagram) ? true : false
end

# Manipulates string into canonical form
def standard_form(word)
	word.downcase.split("").sort
end

# Arguments: String, Array
# Returns: Array
# This method returns an array of words that are 
# anagrams to the specified word
def find_anagrams(word, list)
	index = 0
	result = []
	while index < list.length
		if standard_form(word) == standard_form(list[index])
			result << list[index]
		end
		index += 1
	end
	result
end