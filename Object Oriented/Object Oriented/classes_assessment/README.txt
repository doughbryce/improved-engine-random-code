1. Write a stand-alone module in analyzer.rb called Analyzer
  Methods
    sum - This method takes an array of integers as an argument. This
          method returns the sum of all the numbers in that array. (Integer)

    average - This method takes an array of integers as an argument. This
          method returns the average of all the numbers in that array.
          (float).

    range - This method takes an array of integers as an argument. This
          method returns the range of all the numbers in that array (the
          largest number minus the smallest number). (Integer)


2. Write a class in candy.rb called 'Candy'
  Attributes
    weight - How much the candy weighs in grams (integer).
    calories - How many calories the candy has (integer).

  Instance Methods
    initialize - Takes one argument, a hash containing the weight
                 and number of calories of the candy. This method
                 sets the values of @weight and @calories. If a weight
                 is not given, default it to zero. If the calorie count
                 is not given, default it to zero.

    weight - A getter method for the weight attribute. Returns
             @weight

    calories - A getter method for the calories attribute. Returns
               @calories.


3. Write a class in candy_bag.rb called 'CandyBag'
  Attributes
    
    owner - the name of the owner of the candy bag (String).
    candy - An array of the candy objects it stores.
    max_pieces - The number of pieces of candy the bag can store at most 
                 (Integer).
    max_weight - The maximum weight of candy the bag can hold all 
                 together (Integer).

  Instance Methods
    * Make sure you write helper methods whenever possible to make your 
      code more readable!

    initialize - Takes one argument, a hash containing the information
                 to initialize all of its attributes. If no owner is 
                 given, default it to "Unknown". If no candy is given,
                 default it to an empty array. If max_pieces is not
                 given, default it to zero. If not max_weight is given, 
                 default it to zero.

    current_piece_count - Takes no arguments. Returns how many pieces of
                          candy are currently in the bag (Integer).


    current_weight - Takes no arguments. Returns the current total 
                     weight of the bag, which is the weight of all
                     the pieces of candy it has added up (Integer).
                     If there is no candy in the bag, the method should
                     return zero.

    add_candy - Adds a candy object to @candy. This method takes one 
                argument, which is one candy object. The piece of candy
                should only be added to @candy if:
                    - Adding this piece of candy wouldn't surpass
                      the maximum number of pieces of candy allowed 
                      by the candy bag.
                    - Adding this piece of candy wouldn't surpass the
                      maximum weight allowed by this bag.


4. Write a class in restricted_candy_bag.rb called RestrictedCandyBag
   that is a subclass of CandyBag.

   Instance Methods
    initialize - This method performs all of the initialization that 
                 happend in CandyBag, but additionally creates and
                 assigns a new attribute called @max_calories. If no
                 value is passed for max_calories, default it to zero.

    max_calories - This is a getter method. It returns the value stored
                   in @max_calories

    total_calories - This method returns the total amount of calories 
                     currently in the bag (add up the calories of every
                     piece of candy in the bag.)

    add_candy - This class overrides the behavior of add_candy that
                it inherited from CandyBag. It still takes one 
                aruement, one candy object meant to be added. Now a 
                piece of candy may only be added if:

                  - Adding this piece of candy wouldn't surpass
                    the maximum number of pieces of candy allowed 
                    by the candy bag.
                  - Adding this piece of candy wouldn't surpass the
                    maximum weight allowed by this bag.
                  -Adding this piece of candy wouldn't surpass the 
                   allowed amount of calories in the bag.


5. Write a mixin in talkable.rb called Talkable
  Methods
    say_class - This method returns the string:
                  "Hi, my class is < insert class name here > "
    rand_num - This method returns a random number between 1 and 10.

Now mix Talkable into the class CandyBag and run the Talkable speak tests to confirm that objects of CandyBag can now use the methods from 
Talkable.

Congradulations! You're finished with the coding portion of this
Assessment :)
                  
