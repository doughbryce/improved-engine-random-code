def crazy_text(word)
word = word.rstrip.lstrip
index = 0
while index < word.length
	if index.even?
		word[index] = word[index].upcase
	else
		word[index] = word[index].downcase
	end
	index += 1
end
word
end

p crazy_text("    fhrygt   ")