parts = {}
File.open('zad.txt', 'r') do |f|
  f.each_line do |line|
    word = line.gsub(/[\r\n\-]/, '').split(/[()]/)
    parts[word[0]] = word[1].to_i
  end
end

puts parts.inspect

variants = {}
parts.each do |word, letters|
  chars = word.split('')
  variants[word] = []
  (0..chars.length - letters).each do |number|
    variants[word] << chars[number..number + letters - 1].join
  end
end

puts variants.inspect

