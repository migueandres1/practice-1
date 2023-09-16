
puts 'In all entries separate values with commas'
print 'Enter the ordered array : '
inp_ordered = gets

print 'Enter the shuffled array: '
inp_shuffled = gets.chomp

ordered_split = inp_ordered.split(",")
shuffled_split = inp_shuffled.split(",")
shuffled_split = shuffled_split.sort

for i in 0..ordered_split.length - 1
  if shuffled_split[i] != ordered_split[i]
    result = ordered_split[i]
    break
  end
end

puts result



