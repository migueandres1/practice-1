inp = ARGV

puts `enter a string that you want to covert to a hash` if inp == '--help'
arr = []
inp.each do |value_pair|
  split = value_pair.split('=')
  split[0] = split[0].to_sym
  split[1] = split[1].to_i
  arr.push(split)
end

puts arr.to_h
