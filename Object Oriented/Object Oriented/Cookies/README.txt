We are going to create a simulation of baking coookies. Here are the 
specifications for each class:

------
Cookie
------
Constants: 
  COOKTIME: This represents how long it takes for this kind of cookie to
            cook. Set it to 10.
  BURN_THRESHOLD: This represents how long a it will take a cookie to
                  burn after its finished cooking. Set it to 2.
  COOK_TEMP: The temperature that this type of cookie needs to be cooked.
             Set it to 400.

Attributes: 
  minutes_cooked: Initialized to zero. Write a getter but not a setter
                  method for this.

Instance methods:
  initialize: Takes no arguments and intializes @minutes_cooked to zero

  cook: Adds one minute to the cooking time

  state: Returns :doughy if half or less than half of the COOK_TIME has 
         occured, :almost done if more than half of COOK_TIME has passed,
         but the cookie is not all the way cooked, :done if COOKTIME has 
         passed or the BURN_THRESHOLD of minutes after, or :burned if more
         than the COOK_TIME + BURN_THRESHOLD has occured.


-------------------
ChocolateChipCookie
-------------------
Inherits from Cookie

Constants: 
  COOKTIME: Set to 15.
  BURN_THRESHOLD: Set to 3.
  COOK_TEMP: Set to 390.

Instance methods:
  No new methods.


-------------------
PeanutButterCookie
-------------------
Inherits from Cookie

Constants: 
  COOKTIME: Set to 13.
  BURN_THRESHOLD: Set to 4.
  COOK_TEMP: Set to 360.  

Instance methods:
  No new methods.


-------------------
SugarCookie
-------------------
Inherits from Cookie

Constants: 
  COOKTIME: Set to 16.
  BURN_THRESHOLD: Set to 3.
  COOK_TEMP: Set to 375.

Instance methods:
  No new methods.


----
Tray
----
Constants:
  CAPACITY: Represents how many cookies the sheet can hold.
            Set this value to 20.

Attributes:
  cookies: Holds an array of cookies. Initializes as an empty array.

Instance Methods:
  initialize: Takes an array of trays and assigns it to the attribute 
              cookies. If no array of trays is passed, set this to an
              empty array.

  add_cookie: Adds a cookie to the attribute cookies. This method does 
              not add more cookies than the capacity allows. If it was 
              successful in adding another cookie, it returns true, 
              otherwise it returns false.

  add_cookies: Adds an array of cookies to the attribute cookies.

  empty: Returns an array of the cookies from the cookies attribute, then
         resets the cookies attribute to an empty array.


----
Oven
----
Constants:
  CAPACITY: Represents how many trays of cookies the oven can hold.
            Set this value to 4.

Attributes: 
  temp: Represents the temperature of the oven. Initialize this to 0.

  trays: An array of trays representing the trays of cookies in the oven.
         Initialize this to an empty array.

Instance Methods:
  initialize: Takes an array of trays as an argument. Sets the temp attribute 
              to zero and the trays attribute to the array of trays passed
              to it. If no trays are passed, then set the attribute trays
              to an empty array.

  add_tray: Adds a tray to the attribute tray if there is room in the oven.

  add_trays: Adds an array of trays to the attribute tray if there is room
             in the oven.

  pre_heat(temp): increases the oven's temperature to the desired amount.

  cook: Sends the cook message to every cookie in the oven.

  turn_off: Sets the oven temp to zero.

  empty: Returns an array of the trays in the oven and sets the attribute
         trays to zero.


---------
bakery.rb
---------

This is the file where we will create our program. All the other files were used to define classes. Now we will use theses classes to create a program to simulate baking a batch of cookies. Don't forget, we can and should be 
writing methods here in our driver code instead of one huge block of text.
Here is what your program should do:

1. Ask the user what kind of cookies they would like to make.
2. Then ask the user how many cookies they would like to make.
   Be sure to tell them that each tray in the kitchen holds 20
   cookies and that the oven can only hold 4 trays at maximum, 
   meaning that the oven can bake a maximum of 80 cookies.
3. In the background create the necessary number of cookies of 
   their desired type and put them on the correct number of trays.
4. When after you've done this, inform the user what you did. For
   example, if they wanted to make 35 sugar cookies the program should
   say something like this (you can be creative though): 
    "Tray created with 20 sugar cookies"
    "Tray created with 15 sugar cookies"
5. Then inform the user that you are ready to preheat the oven to
   whatever the correct temperature is for that cookie. Ask them
   if they would like to continue. Keep asking until they say yes.
6. Then say "oven preheating", then preheat the oven that you have
   instantiated, then, say "Oven at 375 degrees", or whatever temperature
   it needs to be.
7. Then tell the user "Putting in cookies now"
8. Tell the user how long the reccomended cooking time is for that 
   type of cookie. Then ask them how long they would like to bake 
   their cookies for.
9. Then bake the cookies for however many minutes the user asked.
   For every minute that the cookies cooke (i.e. every time you send
   the cookies the #cook message) print to the screen the current number
   of minutes that the cookies have been cooked for and the cookies'
   status. Don't hard code this. Send your objects messages and
   use the return values to inform what gets printed. For example:

    Cooking time: 1 min    Status: doughy
    Cooking time: 2 min    Status: doughy
    Cooking time: 3 min    Status: doughy
    Cooking time: 4 min    Status: doughy
    Cooking time: 5 min    Status: doughy
    Cooking time: 6 min    Status: almost ready
    Cooking time: 7 min    Status: almost ready
    Cooking time: 8 min    Status: almost ready
    Cooking time: 9 min    Status: almost ready
    Cooking time: 10 min   Status: ready
    Cooking time: 11 min   Status: ready
    Cooking time: 12 min   Status: ready
    Cooking time: 13 min   Status: burned
    Cooking time: 14 min   Status: burned

10. Then tell the user the result after the cookies were cooked. 
    In the above example, the user cooked the cookies for too long,
    so I would reply:

      "Oh no! You baked your cookies for too long, now they are all
       burned :("

11. Then empty your oven and give tell the user something like:
    "Here are your 35 cookies"

12. Then print
    
    "Turning oven off"

13. Print a final message then end the program. For example:

    "Thanks for cooking in Gumpy's kitchen!"

14. Make any improvements or adjustments to the program as
    you see fit. Be creative!

15. How clean and modular is your code? Can you break a few lines
    of code out into their own method? Are you being DRY? Refactor
    your code as best you can.




