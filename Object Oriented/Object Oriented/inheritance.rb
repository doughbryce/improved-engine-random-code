class Person

attr_accessor :name, :age

def initialize(name, age)
  @name = name
  @age = age
end

def say_hi
  return "Hi I am a Person"  
end

def fake_age
  @age * 2
end

end

########################################

# The student class inherits all behavior
# and sate from the person class
class Student < Person

  attr_accessor :classes

  def initialize(name, age, classes)
    # Runs this method in the Parent class
    super(name, age)
    @classes = classes
  end

  # Overrode the say_hi method
  # Self refers to the object that it is in
  # In this case, self refers to an instance of student
  def say_hi
    "Hi I am a student and my fake age is #{self.fake_age}"
  end

  def fake_age
    double_age = super
    double_age + @age
  end

end

class Ninja < Student

end


sally = Ninja.new("sally", 15, ["programming", "english"])
p sally.methods

happy = String.new("hello")
happy.methods
