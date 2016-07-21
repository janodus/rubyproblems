# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)
vCount = 0

#instead of writing out an || statement, I'm asking to see if each character in the string is a value in the 'vowels' variable.
vowels = ["a","e","i","o","u"]

string.each_char do |x|
  if vowels.include? (x)
    vCount += 1
  end
end

return vCount

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #count_vowels")
puts("===============================================")
    puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
    puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
    puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
    puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
puts("===============================================")
