# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5


def no_repeats(year_start, year_end)
answer = []

  for year in year_start..year_end do
    if no_repeat?(year)
      answer << year
    end
  end
    return answer
end



def no_repeat?(year)
  year = year.to_s.split("")
  test = []

  year.map do |x|
    if !test.include?(x)
      test << x
    end
  end
  if test.length == year.length
    return true
  end
  return false
end



puts("\nTests for #no_repeats")
puts("===============================================")
    puts "no_repeats(1234, 1234) == [1234]: "  + (no_repeats(1234, 1234) == [1234]).to_s
    puts "no_repeats(1123, 1123) == []: "  + (no_repeats(1123, 1123) == []).to_s
    puts "no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]: " + (no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]).to_s
puts("===============================================")
