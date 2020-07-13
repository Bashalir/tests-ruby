def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.sum
end

def multiply(a, b)
  a * b
end

def power(a, p)
  a**p
end

def factorial(a)
  if a < 0
    undefined
  elsif a === 0 || a === 1
    1
  else
    (a * factorial(a - 1))
  end
end
