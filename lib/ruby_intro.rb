# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  @total = 0
  @index = 0
  while @index < arr.length() do
    @total += arr[@index]
    @index += 1
  end
  return @total
end

def max_2_sum arr
  if arr.length() < 1
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    @buffer = arr.sort
    @tmp_max = arr[arr.length()-1]
    @tmp_next = arr[arr.length()-2]
    if @tmp_next < 0
      @tmp_max = arr[0]
      @tmp_next = arr[1]
    end
    return @tmp_max + @tmp_next
  end
end

def sum_to_n? arr, n
  if arr.length() < 2
    return false
  end
  
end

# Part 2

def hello(name)
  @string = "Hello, "
  @string.concat(name)
  return @string
end

def starts_with_consonant? s
  if s.length() == 0
    return false
  end
  
  @tmp = s.chr
  @invalid = Array['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', ' ', '~', '`', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '-', '+', '=', '[', ']', '{', '}', ':', ';', '"', ',', '<', '.', '>', '/', '?']
  if @invalid.include? @tmp
    return false
  end

  case s.chr
  when 'A'
    return false
  when 'E'
    return false
  when 'I'
    return false
  when 'O'
    return false
  when 'U'
    return false
  when 'a'
    return false
  when 'e'
    return false
  when 'i'
    return false
  when 'o'
    return false
  when 'u'
    return false
  end
  return true
end

def binary_multiple_of_4? s
  @buffer = s.chr
  @valid = Array['0', '1']
  if @valid.include? @buffer
  else
    return false
  end

  @tmp = s.to_i(2)
  if @tmp%4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(name, cost)
    if name.length < 1
      raise ArgumentError
    else
      @isbn = name
    end
    if cost <= 0
      raise ArgumentError
    else
      @price = cost
    end
  end
  def isbn
    return @isbn
  end
  def isbn=(name)
    @isbn = name
  end
  def price
    return @price
  end
  def price=(cost)
    @price = cost
  end

  def price_as_string
    @retval = "$"
    @buffer = @price.to_s
    @dec = @buffer.index('.')
    if @dec.nil?
      @buffer += ".00"
    else
      @tmp = @buffer[@dec+1, @buffer.length()-1]
      if @tmp.length() == 0
        @buffer += "00"
      elsif @tmp.length() == 1
        @buffer += "0"
      end
    end
    @retval += @buffer
    return @retval
  end
end
