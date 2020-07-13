def translate(string)
  words = string.split

  words.map do |word|
    capitalize = word =~ /[[:upper:]]/

    word =
      # word beginning with 3 consonant or have 'qu'
      if word[0, 3] =~ /[^aeiou]{3}/ || word[1, 2] == 'qu'
        word[3, word.length] + word[0, 3] + 'ay'

      # word beginning with 2 consonant or 'qu'
      elsif word[0, 2] =~ /[^aeiou]{2}/ || word[0, 2] == 'qu'
        word[2, word.length] + word[0, 2] + 'ay'

      # word beginning with a consonant
      elsif word[0] !~ /[aeiou]/
        word[1, word.length] + word.chr + 'ay'

      else
        word + 'ay'
             end

    capitalize ? word.capitalize : word
  end
       .join(' ')
end
