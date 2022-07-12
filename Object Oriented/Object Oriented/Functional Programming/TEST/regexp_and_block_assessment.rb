##########################################
#      Regexp and Blocks Assessment      #
##########################################

#Name:Bryce Doughman
#Period:3


#password_hider
#Input: String
#Output: String
#Description: This method replaces every occurance of two numbers followed 
# 				by three letters with the string '*****'.

def password_hider(sentence)
sentence.gsub(/\d\d\w\w\w/, "*****")
end


#class_schedule
#Input: Hash, String  
#Output: Hash
#Description: The first arguement this method takes is a hash where the keys are a class'
#             period number and the values are arrays containing the names of the students in
#             that class. The second argument is a student's name. Only return a hash of classes 
#             that have that student as a member.

def class_schedule(classes, name)
classes.keep_if {|names| classes.has_value?(names.include?(name))}
end


#animal_sorter
#Input: Hash, String (a letter)
#Output: Hash
#Description: The first arguement is a hash containing the names of different animals as the 
#             keys and the animals' hights as values. The second arguement is a letter that 
#             The animal's name cannot start with. The third arguement is the minimum height
#             that an animal is allowed to be. If the animal's name starts with the given
#             letter or if the animal's height is less than the minimum height, then
#             delete that animal from the hash.
def animal_sorter(animals, letter, min_height)
animals.delete_if {|name, height| animals[0] == letter}
animals.delete_if {|name, height| animals[name] < min_height}
end


#capitalizer
#Input: Array
#Output: Array
#Description:  This method takes an array of words. If the word has less than five characters,
#              then make the word lowercase. If the word is five or more characters,
#              make the word uppercase.

def capitalizer(words)
words.map! {|word| word.length < 5 ? word.downcase : word.upcase}
end


#password_finder
#Input: String
#Output: Array
#Description: This method finds all instances of a password and returns them in an array.
#             A password consists of four numbers followed by two numbers followed by two
#             numbers. They occur in the format xxxx-xx-xx or xxxx(xx)(xx) or xxxx.xx.xx
#             or xxxxxxxx.

def password_finder(string)
string.scan(/\d\d\d\d[-.()]*\d\d[-.()]*\d\d[-.()]*/)
end


#password_changer
#Input: String
#Output: String
#Description: This method looks for the same passwords describe above in password_finder.
#             This method takes a string and reformats every password to the format
#             xxxx-xx-xx.

def password_formatter(string)
string.gsub(/(\d\d\d\d)[-.()]*(\d\d)[-.()]*(\d\d)[-.()]*/, '\1-\2-\3')
end


#greeter
#Input: Array
#Output: none (prints to the screen)
#Description: This method takes an array of names and prints out the phrase
#             "Hi ______, nice to meet you!" to the screen. The blank represents 
#             where each person's name should go. This method does not return
#             anything, it just prints to the screen.

def greeter(people)
people.map! {|person| puts "Hi #{person}, nice to meet you!"}.join
end


