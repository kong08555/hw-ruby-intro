# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |i|
    sum = sum + i 
  end
  sum
  return sum
end

def max_2_sum arr
  return sum(arr.max(2))
end

def sum_to_n? arr, n
  return false if arr.length == 0  || arr.length == 1
  arr.each_with_index do |j, indx1|
    arr.drop(indx1).each_with_index do |k, indx2|
      return true if(j + k) == n and indx1 != indx2 + indx1
    end
  end
  return false


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
    return true
  else
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
puts sum(array)
puts max_2_sum(array)
puts sum_to_n?((array),15)
puts "--------------------------------------------------------------"

hello("kong")
puts starts_with_consonant?("o")
puts binary_multiple_of_4?(1001001011011001)
puts "--------------------------------------------------------------"

Book = BookInStock.new("cafe terria :", 145) 
puts Book.print_Class