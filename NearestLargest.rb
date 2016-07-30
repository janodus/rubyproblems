# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

def nearest_larger(arr, idx)

j = 0
diff = 1

left = 0
right = 0

while true
  left = arr[idx - diff]
  right = arr[idx + diff]

  if right == nil
    right = 0
  elsif left == nil
    left = 0
  end

  puts idx - diff
  puts idx + diff

  if (left > arr[idx]) && (right > arr[idx])
    puts "RETURNED LEFT due to being first"
    return idx - diff
  elsif (left > right) && (left > arr[idx])
    puts "RETURNED LEFT"
    return idx - diff
  elsif (right > left) && right > arr[idx]
    puts "RETURNED RIGHT"
    return idx + diff
  end
  diff += 1
end

end

puts("Tests for #nearest_larger")
puts("===============================================")
    puts "nearest_larger([2,3,4,8], 2) == 3: "  + (nearest_larger([2,3,4,8], 2) == 3).to_s
    puts
    puts "nearest_larger([2,8,4,3], 2) == 1: "  + (nearest_larger([2,8,4,3], 2) == 1).to_s
puts
    puts "nearest_larger([2,6,4,8], 2) == 1: "  + (nearest_larger([2,6,4,8], 2) == 1).to_s
puts
    puts "nearest_larger([2,6,4,6], 2) == 1: "  + (nearest_larger([2,6,4,6], 2) == 1).to_s
puts
    puts "nearest_larger([8,2,4,3], 2) == 0: "  + (nearest_larger([8,2,4,3], 2) == 0).to_s
puts
    puts "nearest_larger([2,4,3,8], 1) == 3: "  + (nearest_larger([2,4,3,8], 1) == 3).to_s
puts
    puts "nearest_larger([2, 6, 4, 8], 3) == nil: "+ (nearest_larger([2, 6, 4, 8], 3) == nil).to_s
puts
    puts "nearest_larger([2, 6, 9, 4, 8], 3) == 2: "+ (nearest_larger([2, 6, 9, 4, 8], 3) == 2).to_s
puts("===============================================")
