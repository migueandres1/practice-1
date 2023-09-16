def justify_text(text, width)
  lines = text.split("\n")
  justified_lines = []

  lines.each do |line|
    words = line.split
    line_length = 0
    current_line = []

    words.each do |word|
      if line_length + word.length + current_line.length <= width
        current_line << word
        line_length += word.length
      else
        justified_lines << justify_line(current_line, width, line_length)
        current_line = [word]
        line_length = word.length
      end
    end

    justified_lines << current_line.join(' ')
  end

  justified_lines.join("\n")
end

def justify_line(words, width, line_length)
  return words.join(' ') if words.length == 1

  spaces_to_add = width - line_length
  gap_count = words.length - 1
  spaces_per_gap = spaces_to_add / gap_count
  extra_spaces = spaces_to_add % gap_count

  justified_line = ''

  words.each_with_index do |word, index|
    justified_line += word
    justified_line += ' ' * (spaces_per_gap + (index < extra_spaces ? 1 : 0))
  end

  justified_line
end

text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis dolor mauris, at elementum ligula tempor eget. In quis rhoncus nunc, at aliquet orci. Fusce at dolor sit amet felis suscipit tristique. Nam a imperdiet tellus. Nulla eu vestibulum urna. Vivamus tincidunt suscipit enim, nec ultrices nisi volutpat ac. Maecenas sit amet lacinia arcu, non dictum justo. Donec sed quam vel risus faucibus euismod. Suspendisse rhoncus rhoncus felis at fermentum. Donec lorem magna, ultricies a nunc sit amet, blandit fringilla nunc. In vestibulum velit ac felis rhoncus pellentesque. Mauris at tellus enim. Aliquam eleifend tempus dapibus. Pellentesque commodo, nisi sit amet hendrerit fringilla, ante odio porta lacus, ut elementum justo nulla et dolor.'

width = 30
justified_text = justify_text(text, width)
puts justified_text
