def count_words(string)
  words = string.downcase.scan(/\b[a-z]+\b/)
  word_counts = Hash.new(0)
  words.each { |word| word_counts[word] += 1 }
  word_counts
end


