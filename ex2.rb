inp = ARGV

if inp == '--help'
  puts 'Enter a list of random elements to check if they are part of an ascending sequence of characters starting with 1'
end 
def check_num(inp)
  non_numeric = false
  inp.each do |element|
    non_numeric = true if element.to_i == 0
  end
  non_numeric
end

def get_result(inp)
  if check_num(inp)
    result = 1 
  else
    sorted = inp.sort
    for i in 0..sorted.length() - 2
      current_int = sorted[i].to_i
      next_int = sorted[i + 1].to_i
      if (current_int + 1 != next_int)
        result = current_int + 1
        break
      else 
        result = 0
      end
    end
  end
  return result
end

result = get_result(inp)

puts result 

