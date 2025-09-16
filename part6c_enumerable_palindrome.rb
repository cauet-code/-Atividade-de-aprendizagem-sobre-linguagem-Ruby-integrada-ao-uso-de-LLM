module Enumerable
  def palindrome?
    self.to_a == self.to_a.reverse
  end
end


