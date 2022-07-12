#Name: Bryce Doughman
#Period: 3°

class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

def initialize(gender, ethnicity)
  @gender = gender
  @ethnicity = ethnicity
  @reindeer_ranking = ["Rudolph", 
                       "Dasher", 
                       "Dancer", 
                       "Prancer", 
                       "Vixen", 
                       "Comet", 
                       "Cupid", 
                       "Donner", 
                       "Blitzen"]
  @age = rand(1..140)
end

def speak
  "Ho! Ho! Ho! Meeerrry Christmas!"
end

def eat_milk_and_cookies(cookie_type)
  "#{cookie_type}'s are delicious"
end

  def celebrate_birthday
    @age + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.pop(reindeer_name).push(reindeer_name)
  end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end
p santas
