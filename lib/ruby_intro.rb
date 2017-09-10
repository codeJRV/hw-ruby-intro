# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # YOUR CODE HERE
  # [0] if (array.nil? || arr.empty?)
  array.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr = [0] if (arr.nil? || arr.empty?)
  arr.first if arr.length == 1
  else
  arr.sort{ |x, y| y <=> x }.take(2).reduce(:+)

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  #arr.take(n).reduce(:+)
  arr = [0] if (arr.nil? || arr.empty?)
  else
  arr.combination(2).any? { |a, b| (a+b) == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    (s =~ /^[0-1]+$/)?  s.to_i(2) % 4 == 0 || s=="0" : false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn,:price

  def initialize isbn,price
      raise ArgumentError  if (price<=0 || isbn.size == 0)
      @isbn = isbn
      @price = price
  end

  def price_as_string
      format("$%.2f", @price)
  end

end
