=begin Write a function disemvowel(string), which takes in a string, and returns that string with all the vowels removed. Treat "y" as a consonant.

EXPLANATION:
A single line solution to removing all vowels in a given string, and returning the remaining characters. The #puts is there to test on console.

=end

def disemvowel(string)

puts string.delete("aeiou")
return string.delete("aeiou")

end

disemvowel("foobar") == "fbr"
disemvowel("ruby") == "rby"
disemvowel("aeiou") == ""
