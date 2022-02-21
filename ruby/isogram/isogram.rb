class Isogram
  def self.isogram?(word)
    digits = word.downcase.scan(/\w/)
    unique_characters = digits.uniq.join

    unique_characters == digits.join
  end
end
