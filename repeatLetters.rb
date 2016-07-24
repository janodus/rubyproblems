# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
	repeats = 0
	letters = []

	currentCount = 0
	currentLetter = ""

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

	if currentCount > 1
		if letters.include? (currentLetter)
		else
			repeats += 1
			letters.push(currentLetter)
		end
	end

	currentCount = 0
	i += 1
end

puts "Repeat Count: #{repeats} \nRepeated Letters: #{letters}"
return repeats


end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts("\nTests for #num_repeats")
puts("===============================================")
    puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
    puts("\n")
    puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
    puts("\n")
    puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
    puts("\n")
    puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
    puts("\n")
    puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
puts("===============================================")
