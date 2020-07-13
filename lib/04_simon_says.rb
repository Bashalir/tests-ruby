def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, repeat = 2)
  ((string + ' ') * repeat).chop
end

def start_of_word(string, num)
  string[0, num]
end

def first_word(string)
  string.split(' ')[0]
end

def titleize(string)
  string
    .split(' ')
    .each_with_index.map do |s, i|
    s.length > 3 || i == 0 ? s.capitalize : s
  end
    .join(' ')
end
