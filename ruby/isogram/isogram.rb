class Isogram
  def self.isogram?(word)
    digits = word.downcase.scan(/\w/)

    digits == digits.uniq
  end
end
