# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  commonLetter = ""
  commonCount = 0

  currentLetter = ""
  currentCount = 0

  i = 0
  while i < string.length
    currentLetter = string[i]

    j = 0
    while j < string.length
      if string[j] == currentLetter
      currentCount += 1
      end
    j += 1
    end

  if currentCount > commonCount
    commonLetter = currentLetter
    commonCount = currentCount
  end

  currentCount = 0
  i += 1
end

return [commonLetter, commonCount]

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #most_common_letter")
puts("===============================================")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
puts("===============================================")
