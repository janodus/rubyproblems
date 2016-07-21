# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

#VERSION 1:

=begin  def palindrome?(string)

if string.reverse == string
  return true
end

return false
end

=end

#VERSION 2 (Longer version):

def palindrome?(string)
reversed = ""

string.each_char do |x|
  reversed = x + reversed
end

if reversed == string
  return true
end

return false

end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #palindrome?")
puts("===============================================")
    puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
    puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
    puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
puts("===============================================")
