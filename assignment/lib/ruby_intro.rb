# When done, submit this entire file to the autograder.

# Part 1
require 'set'
def sum arr
  # YOUR CODE HERE
  total =0
  arr.each do |value|
    total +=value
  end
  total
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr.max if arr.size ==1
  max1 = arr.max
  arr.delete_at(arr.index(max1))
  max2 = arr.max
  sum_2 = max1 + max2
  
  sum_2

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  checker = Set.new
  arr.each do|numbers|
   target = n - numbers
   if checker.include?(target)
      return true
   end
   checker.add(numbers)
  end

false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  first = s[0];
  if first =~ /[a-zA-Z]/ && first !~ /[aeiouAEIOU]/
     true
  else
     false
  end 
end

def binary_multiple_of_4? s

  return false if s.empty? || s =~ /[^01]/
  value = s.to_i(2)
  value % 4 == 0

end

# Part 3

class BookInStock

 def initialize(isbn, price)
   @isbn = isbn
   @price = price
   constructor(isbn,price)
   
 end
  # getter for isbn
 def isbn
   @isbn
 end
 # getter for Price
def price
  @price
 end
 # Setter
def isbn=(value)
  @isbn = value
end
def price=(values)
  @price = values
end

def constructor(isbn_number, price_book)
    if isbn_number.empty? || price_book <=0
      raise ArgumentError
    end 

end


def price_as_string
   result = "$%.2f" %price
   return result
end 

end
