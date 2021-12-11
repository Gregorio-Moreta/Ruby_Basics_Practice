# Getting reps in

###########################################################
##  Hello World
###########################################################
# 1.
puts("Hello World")

# 2.
adjective = "Big Bad"

puts "Hello " + "#{adjective}" + " World"

# 3.
greetings = "hello world".upcase
puts greetings


###########################################################
##  Nums arrays and Enumerables
###########################################################
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]
puts "          Nums arrays and Enumerables"
# 1.    Use .uniq to print the array with all duplicate entries removed
puts "          QUESTION 1"
puts nums.uniq

# 2.    Next, use .push and .pop, .shift.unshiftand .length on the array as you would with javaScript (if you need to add a number, add 5)
#   .push
puts "          QUESTION 2"
puts nums.push(5555555)

# 3.    Use .include? to check if the array contains the number 8
puts "          QUESTION 3"
puts nums.include?(5)

# 4.    Use .find_all to find all the numbers greater than 10
puts "          QUESTION 4"
puts nums.find_all { |i| (i > 10) }

# 5.    use .all? to check if all the numbers are greater than 0?
puts "          QUESTION 5"
puts nums.all? { |i| (i > 0) }

# 6.    use any? to check if there are any numbers that are divisible by 8
puts "          QUESTION 6"
puts nums.any? { |i| (i / 8) }

# 7.    use .count to let you know how many numbers are greater than 4
puts "          QUESTION 7"
puts nums.count { |i| (i > 4) }

# 8.    use .each_with_index to print each item times its index
puts "          QUESTION 8"
nums.each_with_index { |item, index| puts "#{item}".to_i * "#{index}".to_i }

# 9.    .find the number that is divisible by 7 and 5 and is greater than 0
puts "          QUESTION 9"
puts nums.find { |i| i % 5 == 0 and i % 7 == 0 and i > 0 }

# 10.   .find_index of the number that is divisible by 5 and 7 and is greater than 0
puts "          QUESTION 10"
puts nums.find_index { |i| i % 5 == 0 and i % 7 == 0 and i > 0 }

# 11.   return the .first 3 numbers
puts "          QUESTION 11"
puts nums.first(3) 

# 12.   return the .last 5 numbers
puts "          QUESTION 12"
puts nums.last(5) 

# 13.   .group_by the modulo of 3 ( % 3)
puts "          QUESTION 13"
puts nums.group_by { |i| i % 3 }

# 14.   use minmax to return the smallest and largest number
puts "          QUESTION 14"
puts nums.minmax 

# 15.   use .reject to return all the numbers that are NOT divisible by 3
puts "          QUESTION 15"
puts nums.reject { |i| i % 3 != 0 }

# 16.   use .select to return all the numbers divisible by 5
puts "          QUESTION 16"
puts nums.select { |i| i % 5 == 0 }


###########################################################
##  Color Array
###########################################################
#   With the following array:
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']
puts "          COLOR ARRAY"

# 1.    Print out a random color.
puts "          QUESTION 1"
puts colors.sample(1)

# 2.    Print out the colors array in reverse order.
puts "          QUESTION 2"
puts colors.reverse

# 3.    Print out all of the colors in the array with all capital letters.
puts "          QUESTION 3"
puts colors.map(&:upcase)


###########################################################
##  Methods
###########################################################
# 1. Write a method named find_area that finds the area of a rectangle when given values for width and height

# REMEMBER: In Ruby, the keyword return is implied and can be omitted!
puts "          Methods"

puts "          QUESTION 1"
def find_area height, width
  (height * width)
end
puts find_area 100, 50

# 2. Write a method named multiply_each_by_five that will loop over the given nums array below and print each number multiplied by 5
puts "          QUESTION 2"
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five arr
  arr.collect { |x| x * 5 }
end
puts multiply_each_by_five nums

###########################################################
##  Methods With A Hash
###########################################################
# Hashes  Use the following given hashes to solve the problems below
puts "          Methods With A Hash"

book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}

# 1.    Write a method named print_price that will take in any hash and return the price of the item.
puts "          QUESTION 1"
def print_price hash_name
  hash_name.fetch(:price)
end
puts "book PRICE: "  
puts print_price book
puts "lamp PRICE: "  
puts print_price lamp
puts "table PRICE: "  
puts print_price table


# 2.    Write a method named print_item_sums that will take in two hashes and will return the sum of the prices for the items in the hashes.
puts "          QUESTION 2"
def print_item_sums hash_name1, hash_name2
  hash_name1.fetch(:price) + hash_name2.fetch(:price)
end
puts "This method returns the sum of the prices for two items, in hashes"
puts "Sum of book and lamp"
puts print_item_sums book, lamp
puts "Sum of book and table"
puts print_item_sums book, table
puts "Sum of lamp and table"
puts print_item_sums lamp, table

###########################################################
##  Euler Problem 1
###########################################################
puts "          Euler Problem 1"

# 1.    If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.
puts "          QUESTION 1"
puts (1..1000).select.inject( 0, :+ ) { |x| x % 3 == 0 or x % 5 == 0 }

###########################################################
##  Primes
###########################################################

puts "          Primes"

# 1.    Write a method called check_prime? that will test whether a number is Prime. The method will return true if Prime, false if not.
puts "          QUESTION 1"


# 2.    Write another method called get_primes that will print all the Primes up to an arbitrary limit. For example, if you invoke your method with get_primes 100, it will print all the Prime numbers up to and including 100.


# 3.    This method can call on the previous check_prime? method.


# Check out the documentation on Ruby's Prime class

# Reminders:

# A Prime number is a number that is not evenly divisible by another number except 1 and itself. To test whether a number is Prime, you only need to test as far as the square root of that number. This is advisable for optimization and testing large numbers.
