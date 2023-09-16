print 'First number: '
first_num = gets.chomp
print 'Second number: '
second_num = gets.chomp

list_options = []
for i in first_num..second_num
  list_options.push(i)
end

list_options_len = list_options.length
missing_nums = rand(1...list_options_len)
list_len = (list_options.length + 1) - missing_nums
list = []

for i in 1..list_len
  rand_indx = rand(0..list_options.length)
  while list_options[rand_indx] == nil do 
    rand_indx = rand(0..list_options.length)
  end
  
  number = list_options[rand_indx]
  list.push(number)
  list_options.delete_at(rand_indx)

end

missing_nums_arr = list_options

puts 'Generated list: '
puts list.to_s

puts 'missing Numbbers: '
puts missing_nums_arr.to_s
