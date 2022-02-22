class Scrabble
  attr_reader :word, :values

  def initialize(word = nil)
    @word = word.scan(/\w/).join unless word.nil?
    @values = letter_values
  end

  def score
    score = 0
    return score if word.nil? || word.empty?

    word.upcase.each_char { |char| score += values[char] }
    score
  end

  def self.score(input)
    new(input).score
  end

  def letter_values
    values = {}
    %w[A E I O U L N R S T].each { |letter| values[letter] = 1 }
    %w[D G].each { |letter| values[letter] = 2 }
    %w[B C M P].each { |letter| values[letter] = 3 }
    %w[F H V W Y].each { |letter| values[letter] = 4 }
    %w[K].each { |letter| values[letter] = 5 }
    %w[J X].each { |letter| values[letter] = 8 }
    %w[Q Z].each { |letter| values[letter] = 10 }
    values
  end
end
