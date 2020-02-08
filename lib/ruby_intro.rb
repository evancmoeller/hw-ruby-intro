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
  if arr.length() > 0
    if arr.length() == 1
      return arr[0]
    end
    @tmpx = arr[0]
    @tmpy = arr[0]
    @index_x = 0
    @store = 0
    @index_y = 0
    while @index_x < arr.length() do
      if arr[@index_x] > @tmpx
        @tmpx = arr[@index_x]
        @store = @index_x
      end
      @index_x += 1
    end
    while @index_y < arr.length() do
      if arr[@index_y] > @tmpy
        if @index_y != @store
          @tmpy = arr[@index_y]
        end
      end
      @index_y += 1
    end
    return @tmpx + @tmpy
  else
    return 0
  end
end

def sum_to_n? arr, n
  @buffer = 0
  if arr.length() > 1
    @index_x = 0
    @tmpx = 0
    while @index_x < arr.length() do
      @tmpx = arr[@index_x]
      @index_y = 0
      @tmpy = 0
      while @index_y < arr.length() do
        @tmpy = arr[@index_y]
        @buffer = @tmpx + @tmpy
        if @buffer == n
          return true
        end
        @index_y += 1
      end
      @index_x += 1
    end
  end
  return false
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
    @@isbn = name
    @@price = cost
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
end
