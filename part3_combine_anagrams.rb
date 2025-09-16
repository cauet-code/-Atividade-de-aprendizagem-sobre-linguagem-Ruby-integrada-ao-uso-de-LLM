def combine_anagrams(words)
  anagram_groups = Hash.new { |hash, key| hash[key] = [] }
  words.each do |word|
    sorted_word = word.downcase.chars.sort.join
    anagram_groups[sorted_word] << word
  end
  anagram_groups.values
end


