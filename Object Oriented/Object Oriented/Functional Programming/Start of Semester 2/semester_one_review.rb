#Name:
#Period:


#Methods 1 and 2
#Description: You will write two identical methods using different techniques. Both methods
#             will require iteration. For the first method use a .each loop. For the second
#             method, use a while loop. These methods take an array of names and count how long
#             each name is. They then sort the names into three categories: three or less
#             letters, four to seven letters, and eight or more letters. Return a hash containing
#             the number of short, medium, and long names. (See spec for an example).
#Arguments: Array of names (strings)
#Return: Hash
#        Keys: (strings) short, medium, long
#        Values: Integers

def word_sorter_each(names)
  names = ["harry", "ron", "hermione"]
  names.each do |name|
    name_length = name.length
    names_hash[:short]
    names_hash[:medium]
    names_hash[:long]

    if name_length < 4
      p names_hash[:short] << name
    elsif name_length > 3 && name_length < 8
      p names_hash[:medium] << name
    elsif name_length > 7
      p names_hash[:long] << name
    end
  end
    p names_hash
end


def word_sorter_while(names)
  
end


#Methods 3 and 4
#Description: You will again write two methods that do the same thing. 
#             These methods take a test score. For the control flow of the first method,
#             use if statements. For the second, use a case statement (look up how to use 
#             a case statement if you forget). The goal of this method is to turn
#             a test score (as a percent) into a letter grade. Scores from 90-100 are an A,
#             80-89 are a B, 70-79 are a C, etc.
#Arguments: Test score (Integer)
#Return: Letter grade (String)

def score_converter_while(score)
  
end

def score_converter_case(score)

end






