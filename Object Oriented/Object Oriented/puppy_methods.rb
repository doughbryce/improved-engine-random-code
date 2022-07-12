# Name: Bryce Doughman
# Period: 3°

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {p "Woof!"}
  end

  def rollover
    p "*rolls over*"
  end

  def dog_years(age)
    puts "Dog is #{age * 7} years old"
  end

  def treat
    print "I LOVE TREATS!" * 20
  end

  def initialize
puts "Initializing new puppy instance..."
  end
end

class Ski
    
  def initialize

    puts "Which run would you like to choose? (green, blue, black)"
    user_run = gets.chomp.downcase

    if user_run == "green"
      puts "Black it is!"
    else
      puts "Black it is!"
    end
  end

  def jump
    air = [2, 3, 4, 5, 6, 7, 8]
    puts "You got #{air.sample} feet of air!"
  end

  def injuries
    print "Were there any injuries?(y or n)"
    user_hurt = gets.chomp.downcase
    case user_hurt
      when "n"
        puts "Great!"
      when "y"
        puts "You'll be fine:)"
      end
  end

index = 0
while index < 50
  ski_array = []
  ski_array << Ski.new

  ski_array.each do |instance| 
  instance.jump
  instance.injuries
  end

  index += 1
end

end
