
puts 'Enter the size of the square matrix:'
size = gets.chomp.to_i

matrix = Array.new(size) { Array.new(size) }

puts "Enter #{size} rows of #{size} elements each (separated with spaces):"
for i in 0...size
  matrix[i] = gets.chomp.split.map(&:to_i)
end

