ordered_words = {}

puts 'Reading dictionary...'
File.open('dict.txt', 'r') do |f|
  f.each_line do |line|
    word = line.gsub(/[\r\n\-]/, '')
    ordered_words[word.length] ||= []
    ordered_words[word.length] << word
  end
end
puts 'Reading complete.'


ordered_words.each do |length, words|
  puts "Writing length=#{length}..."
  File.open("words#{length}.txt", 'w+') do |f|
    f.puts(words)
  end
end

puts 'Writing complete.'
