file = File.open('words.txt')

file.each_line do |line|
  Word.create(:words => line.chomp)
end
