inp = ARGV

if inp == '--help'
  puts `Enter any number as argument to get the oposite
      (if you enter a positive number you will get back a negative number and             viceversa)`
else
  if inp[0].include? '.'
    floating = inp[0].to_f
    result = floating - (floating * 2)
  else
    integer = inp[0].to_i
    result = integer - (float * 2)
  end

  puts result
end
