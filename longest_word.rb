puts "Enter the line to find largest word"
line = gets

def longest_word(line)

words = line.split(' ')
long_word = ' '

words.each do |word|
if long_word.length < word.length
long_word = word
end
end

puts "Longest word is #{long_word}"
end

puts longest_word(line)
