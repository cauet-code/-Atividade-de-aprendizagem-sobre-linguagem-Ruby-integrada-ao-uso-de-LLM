def palindrome?(string)
  processed_string = string.downcase.gsub(/\W/, '')
  processed_string == processed_string.reverse
end


