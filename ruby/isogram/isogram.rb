class Isogram
  def self.isogram?(word)
    digits = word.downcase.scan(/\w/)
    unique_characters = digits.uniq

    unique_characters.join == digits.join
  end
end
