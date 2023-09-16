input_hash = eval(ARGV[0])

if input_hash == '--help'

  puts `enter a hash in string form (delimited with quotes) with key value
        pairs to calculate all the possible permutations`
else
  result = input_hash.map do |key, value|
    value.map { |current| current * key }
  end.join

  puts result

  result = result.split('')

  result = result.permutation(result.length)
  result.each do |permutation|
    puts "#{permutation.join('')}"
  end

end
