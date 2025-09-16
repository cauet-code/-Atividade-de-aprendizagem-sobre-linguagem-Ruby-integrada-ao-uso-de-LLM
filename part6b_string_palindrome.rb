class String
  def palindrome?
    processed_string = self.downcase.gsub(/\W/, '')
    processed_string == processed_string.reverse
  end
end


