#Name:Bryce Doughman
#Period:3°

#Pseudocode for your class goes here:
	# Wizard class
		# Attributes
			# patronus: varies(animal)
			# hogwarts_house: varies(gryffindor, slytherin, hufflepuff, ravenclaw)
			# wand_core: varies(phoenix, unicorn, dragon)
			# age: 11-17
		# Methods
			# cast_patronus: will display number of dementors and patronus animal
			# duel: will choose a spell for your opponent and argument gets your 
				# spell and will say who wins
			# play_quidditch: will tell you who is playing and who won the game

#Class definition goes here:
class Wizard
	attr_reader :patronus, :hogwarts_house, :wand_core, :age

	def initialize
		@patronus = ["cat", "dog", "polar bear", "hippogriff", "skrewt", "dragon", "phoenix"].sample
		@hogwarts_house = ["gryffindor", "slytherin", "hufflepuff", "ravenclaw"].sample
		@wand_core = ["phoenix", "dragon", "unicorn"].sample
		@age = [11..17].sample
	end

	def cast_patronus
		puts "It gets sad and all hope is drowning in the cold. Cast a spell lest you lose your soul."
		patronus_spell = gets.chomp.downcase.to_s
		case patronus_spell
		when "expecto patronum"
			effective = ["", "not"]
			puts "#{@patronus} patronus was cast on #{rand(2..50)} dementors! It was #{effective.sample} effective"
		else 
			puts "Your soul has been eliminated"
		end
	end

	def duel
		puts "You have entered a duel. What spell would you like to use?"
		spell = gets.chomp.downcase.to_s
		case spell
			when "expelliarmus"
				puts "They have been disarmed!(you lose)"
			when "avada kadavra"
				puts "The opponent has been eliminated! You win."
			when "lumos"
				puts "Wow you're about to die and you shine a flashlight?(you lose)"
			when "crucio"
				puts "Not cool bro, you lose"
			when "imperio"
				puts "I am now at your command (you win)"
			else
				puts "Sorry, I don't know that spell. You lose."
		end
	end

	def play_quidditch
		teams = ["gryffindor", "slytherin", "hufflepuff", "ravenclaw"]
		puts "#{teams.sample} vs. #{teams.sample}. The latter wins!!!"
	end

end

#Driver code (your user interface) goes here:
harry = Wizard.new
harry.cast_patronus
harry.duel
harry.play_quidditch
puts harry.wand_core
puts harry.patronus
puts harry.hogwarts_house
puts harry.age
