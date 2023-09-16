integer = ARGV

if integer == '--help'
  puts 'Enter an integer as argument to determine if it is even or odd '
else 
  result = integer[0].to_i.even? ? 'Even' : 'Odd'
  puts result
end 
