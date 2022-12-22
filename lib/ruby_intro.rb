# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |i|
    sum = sum + i 
  end
  puts sum
  return sum
end

def max_2_sum arr
  return sum(arr.max(2))
end

def sum_to_n? arr, n
  sum = 0
  arr.each{ |i|
  }
end

# Part 2

def hello(name)
  puts "hello:#{name}"
end

def starts_with_consonant? s
  s = s.to_s.downcase
  return s == "" ? true : s[0].match?(/a|e|i|o|u/)
end

def binary_multiple_of_4? s
  if s[-1] == 0 and s[-2] == 0
   puts true
   return true
  else
   puts false
   return false
  end
end

# Part 3

class BookInStock
  attr_reader :name_B
  attr_accessor :price

  def initialize(name_B, price)
    @name_B = name_B
    @price = price
  end

  def print_Class
    "name:#{@name_B},#{@price}"
  end

end


array = [1, 2, 3, 4, 5, 6]
sum(array)
max_2_sum(array)
sum_to_n?((array), 7)

hello("kong")
puts starts_with_consonant?("o")
binary_multiple_of_4?(1001001011011001)

Book = BookInStock.new("cafe terria :", 145) 
puts Book.print_Class