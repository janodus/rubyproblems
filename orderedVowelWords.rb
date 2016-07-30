# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

def ordered_vowel_words(str)
str = str.split(" ")
answer = []

str.map do |x|
  if ordered_vowel_word?(x)
    answer << x
  end
end

return answer.join(" ")

end

def ordered_vowel_word?(word)
tests = []
vowels = ["a","e","i","o","u"]

word.each_char do |x|
  if vowels.include?(x)
    tests << x
  end
end
if tests == tests.sort
  return true
end
return false
end


puts("\nTests for #ordered_vowel_words")
puts("===============================================")
    puts "ordered_vowel_words(\"amends\") == \"amends\": "  + (ordered_vowel_words("amends") == "amends").to_s
    puts "ordered_vowel_words(\"complicated\") == \"\": "  + (ordered_vowel_words("complicated") == "").to_s
    puts "ordered_vowel_words(\"afoot\") == \"afoot\": "  + (ordered_vowel_words("afoot") == "afoot").to_s
    puts "ordered_vowel_words(\"ham\") == \"ham\": "  + (ordered_vowel_words("ham") == "ham").to_s
    puts "ordered_vowel_words(\"crypt\") == \"crypt\": "  + (ordered_vowel_words("crypt") == "crypt").to_s
    puts "ordered_vowel_words(\"o\") == \"o\": "  + (ordered_vowel_words("o") == "o").to_s
    puts "ordered_vowel_words(\"tamely\") == \"tamely\": "  + (ordered_vowel_words("tamely") == "tamely").to_s

    phrase = "this is a test of the vowel ordering system"
    result = "this is a test of the system"
    puts "ordered_vowel_words(phrase) == result: "  + (ordered_vowel_words(phrase) == result).to_s
puts("===============================================")
