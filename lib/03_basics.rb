def who_is_bigger(a, b, c)
  array = [a, b, c]

  if array.include?(nil)
    'nil detected'
  else
    bigger = array.max
    index_of_bigger = array.index(bigger)

    # 97 is the "a" ASCII table
    "#{(97 + index_of_bigger).chr} is bigger"
  end
end

def reverse_upcase_noLTA(string)
  string
    .reverse
    .upcase
    .gsub(/[LTA]/, '')
end

def array_42(array)
  array.any? { |a| a == 42 }
end

def magic_array(array)
  ## You can do this in one line less than 55 chars
  ## a.flatten.uniq.map{|x|x*2}.delete_if{|x|x%3==0}.sort

  array
    .flatten
    .uniq
    .map { |a| a * 2 }
    .delete_if { |a| a % 3 == 0 }
    .sort
end
