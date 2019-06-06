Brain Teaser - FizzBuzz

Objectives:

  Write a short program that prints each number 
  from 1 to 100 on a new line.
  For each multiple of 3, print "Fizz" instead of 
  the number.
  For each multiple of 5, print "Buzz" instead of 
  the number.
  For numbers which are multiples of both 3 and 5, 
  print "FizzBuzz" instead of the number.





# Tyson's Process
  for i in 1..100   
    if i % 15 == 0    
      puts "FizzBuzz"   
    elsif i % 5 == 0     
      puts "Buzz"   
    elsif i % 3 == 0     
      puts "Fizz"   
    else    
      puts i   
    end 
  end

  # Candice's Process
  def FizzBuzz
    1.upto(100) do |x|
    if
     (x % 3 == 0) && (x % 5 == 0)
     puts "FizzBuzz"
    elsif
     x % 3 == 0
     puts "Fizz"
    elsif
     x % 5 == 0
     puts "Buzz"
    else
     puts x
    end
    
  end
    
    FizzBuzz








# fizzbuzz


(1..100).each do |n|
  if n % 3 === 0 && n % 5 === 0
    puts 'FizzBuzz'
  elsif n % 3 === 0
    puts 'Fizz'
  elsif n % 5 === 0
    puts 'Buzz'
  else 
    puts n
  end
end






Unit Testing
  - Test methods to its most basic functionality.
  - To ensure app is working correctly
  - Ensure each method is doing its part
    - methods are suppose to be doing 1 thing
  - Test small parts of code or "Units"

Black Box testing 
  we only know what the method produces 
  or does but not how it works

BDD
  Behavior Driven Developement
  Describes Applications
  
Rspec

  Helper gems
    shoulda-matchers
    database_cleaner
    factory-bot

    
bundle
rails g rspec:install


Testing models

https://devhints.io/factory_bot


models
  assoc.
  validations
  instances methods
  class methods
  table / table Attr.
