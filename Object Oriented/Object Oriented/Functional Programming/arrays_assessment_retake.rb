#Name: Bryce Doughman
#Period: 3°
#For Retake Credit: No 

#This file should only contain methods. Each method is described
#below and has tests in the spec file. Make sure your methods 
#pass the tests in the spec file. You may use p or puts 
#temporarily as you are writing your code, but there should 
#be no printing in your final version.

#Method 1
  #This method takes an array of words. For each word, the first letter is
  #removed and moved to the end of the word. After that, the letters 'ay' are
  #added. For example, the word "class" turns into "lasscay". After each word
  #is changed, return the changed array.

  #To test pig_latin using rspec, type this into the console:
    #rspec -fd --tag pig_latin arrays_assessment_retake_spec.rb

def pig_latin(words)
  #Your code here.
  index = 0
  while index < words.length
      words[index] = words[index].insert(-1, words[index][0])
      words[index][0] = ""
      words[index] = words[index] + "ay"
    index += 1
  end
  words
end


#Method 2
  #This method takes a number and returns its factorial. A factorial is
  #when you multiply an integer by every integer lower than it. For example,
  #the factorial of 4 is 4 * 3 * 2 * 1 which equals 24.

  #To test max using rspec, type this into the console:
    #rspec -fd --tag factorial arrays_assessment_retake_spec.rb

def factorial(number)
  #Your code here.
  (1..number).inject(:*)
end


#Method 3
  #This method takes a two dimensional array of numbers. Each number
  #is multiplied times 3 and then added with 5. The method then returns
  #the changed two-dimensional array

  #To test multiply_then_add using rspec, type this into the console:
    #rspec -fd --tag multiply_then_add arrays_assessment_retake_spec.rb

def multiply_then_add(numbers)
  #Your code here.
  index = 0
  while index < numbers.length
    index1 = 0
    while index1 < numbers[index].length
      numbers[index][index1] = numbers[index][index1].to_i*3 + 5
      index1 += 1
    end
    index += 1
  end
numbers
end
