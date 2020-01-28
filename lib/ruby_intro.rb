# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  num = 0
  arr.each do |x|
    num += x
  end
  return num
end

def max_2_sum arr
  # YOUR CODE HERE
  arr = arr.sort
  if arr.length == 0
    return 0
  end
  return arr.length < 2 ? arr.last : arr.at(arr.length - 1) + arr.at(arr.length - 2)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  count = 0
  map = Hash.new(0)
  arr.each do |k|
    map[k] += 1
  end
  arr.each_with_index do |el, i|
    count += map[n-arr[i]]
    if n-arr[i] == arr[i] 
      count -= 1
    end
  end
  return count/2 > 0
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  test = s.dup
  test.capitalize!
  return false if test.length == 0
  if /[AEIOU]/ =~ test[0]
    return false
  elsif /[^A-Z]/ =~ test[0]
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.length == 0
  if /[^01]/ =~ s
    return false
  end
  return s.to_i(base=2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(i, p)
    if i == "" 
      raise ArgumentError
    else
      @isbn = i 
    end
    if p <= 0 
        raise ArgumentError
    else
      @price = p 
    end
  end
  
  def isbn
    @isbn 
  end 
  
  def price 
    @price 
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end 
  
  def price=(new_price)
    @price = new_price 
  end
  
  def price_as_string
    price = "%.2f" % @price
    return "$#{price}"
  end
end