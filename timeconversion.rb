# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)

  hours = minutes / 60
  minutesRemain = minutes % 60

# The if statement below is used to add a second '0' to the minutesRemain variable, should the remainder be a single '0'.
  if minutesRemain == 0
    minutesRemain = "00"
  end

return hours.to_s + ":" + minutesRemain.to_s

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #time_conversion")
puts("===============================================")
    puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
    puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
    puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
puts("===============================================")
