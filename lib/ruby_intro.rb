# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  include Enumerable
  arr.inject(0, :+)

end

def max_2_sum arr
  max1 = 0
  max2 = 0
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
  max1 = arr.max
  arr.delete_at(arr.index(max1))
  max2 = arr.max
  max1+max2
  end
end

def sum_to_n? arr, n
  arr.permutation(2) do |a,b|
    if (a+b) == n
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  vowels = ['a','e','i','o','u','A','E','I','O','U']
  if s.length < 1
    return false
  end
  if s[0] =~ /^\W/
    return false
  end
  vowels.each do |v|
    if s[0] == v
      return false
    end
  end
  return true
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  end
  if s !~ /^[01]+$/
    return false
  end
  if s =~ /\d*[1](0|1)0$/
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError
    end
    if price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    "$#{'%.2f' % self.price}"
  end
end
