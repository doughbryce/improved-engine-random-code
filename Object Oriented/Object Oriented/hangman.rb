#Write your game logic here. If you can, write helper methods
#to make your code cleaner and more readable. First, just get
#the game to work, then try to clean up your code.

def play_game()
  puts "Player 1, what is your word?"
  word = gets.chomp
  5.times do puts "*" end
  player2answer = ""
  used = ""
  seq = "_" * word.length
  while player2answer.split("").sort != word.split("").sort
  	index = 0 
	puts "\n"
	print "Word: "
	print seq
    puts "\nGuess a letter: " 
    letter = gets.chomp
    if word.include?(letter) == true && used.include?(letter) == false && word.count(letter) == 1
      player2answer << letter
      used << letter
      puts "'#{letter}' is in the word."  
    elsif word.include?(letter) == true && used.include?(letter) == false && word.count(letter) > 1
    	counter = word.count(letter)
    	counter.times do 
    		player2answer << letter 
    	end
    	puts "'#{letter}' is in the word."
    	used << letter
    else
      used << letter
      puts "'#{letter}' is not in the word."
    end
	if word.include?(letter) == true && word.count(letter) == 1
		index = word.index(letter)
		seq[index] = letter
	end
	if word.count(letter) > 1 && word.include?(letter) == true
		index = word.index(letter)
		index2 = word.index(letter, index + 1)
		seq[index] = letter
		seq[index2] = letter
	end
  end
  if player2answer.split("").sort == word.split("").sort
    puts "You guessed the word!: #{word}"
  end
end
play_game()

