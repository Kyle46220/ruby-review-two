# You may NOT use Google. These questions are just to test where you are at. Get through as many of these as you can. If you don’t get through all of them it’s ok - they are designed to take longer than the available time. If you can’t remember a bit of code, write the pseudo-code that represents what you would write your Ruby code.

# 1. What is a variable?

a place to store info

# 2. What Ruby method can you use to make a loop from an array?

.each

# 3. In Ruby, what are booleans?

true false 

# 4. How do classes relate to objects?

classes are objects, that contain properties of other objects (behaviours(methods)vand attributes)
v
# 5. What is an instance variable?

its a variable with the @ that is in the class definition, that all instances of the class will have. 

# 6. Choose an everyday item (cup, computer, person) and give it two instance variables (which will be attributes), and one method (to describe a function of the object). Code the initialize method in full (for these attributes only), and the definition line of the instance method (but do not code the entire method).

 cup - volume, filledness

 class Cup
  def initialize (volume, filledness)
    @volume = volume 
    @filledness= filledness
  end
end

 def something(something) # not sure what is meant by *the* instance method. I thought instance method means any method defined inside the class. or maybe that's a class method.  

#or maybe its this 
  Cup.new(500, true)
    


# 7. What is handy about using gems in Ruby?

# they extend the functionality with pre written code so you don't have to code everything yourself from scratch, and can use the work of other developers. 

# 8. Define a class called fish, and leave it empty.

class Fish
end


# 9. How would you use that class to make three fish objects?

3.times do Fish.new

  or
fish1 = Fish.new
fish2 = Fish.new
fish3 = Fish.new

# 10. Add two attributes to your fish class, name and species, and make them accessible for reading and writing.

class Fish 
  attr_accessor :species, :size
  def initialize
    @name = "name"
    @species = "species"    
  end
end

# 11. 

# a. Create one fish object and store it in a variable, and 

fish_1 =  fish.new

# b. on a second line, give that fish object’s name attribute the value of ‘Fred’ (assume you have access).

fish_1.name("Fred")

# 12. Define a hash called ‘student’. This hash should have two keys, one called name, and the other called age, and assign a string to the name key, and an integer to the age key. 

student = {
  name: "Kyle",
  aged: 29
}

# 13. Write a Ruby method that takes three arguments and returns the sum (total) of those three arguments.

def add(a,b,c)
  a+b+c
end


# 14. Write a Ruby method that takes an array and a string as arguments, and returns true if the string is in the array, and false if it is not.
def search(string, arr)
  string = string.to_s
  if arr.include?(string)
    result = true
  else result = false
  end
  result
end

# 15. Write a method that takes one argument, a number, and that returns true if the number is divisible by three, and false otherwise. 

def bythree(number)
  number=number.to_i
  if number%3 == 0
    result = true
  else result = false
  end
end



# 16. You must use your previous method in this next question. Write another method that takes an array (of numbers) as an argument. This method will use your first method to return two arrays (within one array - an array of arrays). The first array contains the numbers that are divisible by 3, and the other contains the rest of the numbers. For example, if you pass the second method the array [9, 4, 3, 5, 30, 2, 8] it would return [[9, 3, 30],[4, 5, 2, 8]].


arr = [9, 4, 3, 5, 30, 2, 8]


def three_splitter(arr)
  result = []
  result_1 = []
  result_2 = []

   arr.each do |i|
    if bythree(i) == true
      result_1 << i 
    elsif bythree(i) ==false 
      result_2 << i 
    end
  end
  result << result_1
  result << result_2
  result
end

  p three_splitter(arr)