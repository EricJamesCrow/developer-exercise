class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    word = ""
    index = 0
    output_string = str
    str.each_char do |letter|
      if letter == " " || (index == (str.length - 1))
        if (index == (str.length - 1)) && (letter != " ")
          word += letter
        end
        if word.length > 4
          if word[0] == word[0].upcase
            if word.match?(/\p{P}$/) # if word ends with punctuation
              output_string = output_string.gsub(word, "Marklar" + word[-1])
            else
            output_string = output_string.gsub(word, "Marklar")
            end
          else
            if word.match?(/\p{P}$/) # if word ends with punctuation
              output_string = output_string.gsub(word, "marklar" + word[-1])
            else
            output_string = output_string.gsub(word, "marklar")
            end
          end
        end
        word = ""
        index += 1
        next
      end
      word += letter
      index += 1
    end
    return output_string
  end
  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    sum = 0
    a = 0
    b = 1
    nth.times do
      temp = a
      a = b
      b = temp + b
      if a % 2 == 0
        sum += a
      end
    end
    return sum
  end

end