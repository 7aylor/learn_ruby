#adds two numbers
def add(left, right)
  left + right
end

#finds the different of left - right
def subtract(left, right)
  left - right
end

#finds the sum of an array of numbers
def sum(nums)
  total = 0
  nums.each do |i|
    total += i
  end
  total
end

#multiplies two numbers
def multiply(left, right)
  left * right
end

#returns the base to the power of exponent
def power(base, exponent)
  base ** exponent
end

#finds the factorial of a given number
def factorial(num)
  total = num
  if(num == 1 || num == 0)
    total = 1
  else
    while(num > 1)
      total *= (num - 1)
      num = num - 1
    end
  end
  total
end
