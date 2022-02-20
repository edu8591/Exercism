=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  attr_reader :words

  def initialize(words)
    @words = split_words(words)
  end

  def word_count
    results = {}
    words.each { |word| results.key?(word) ? results[word] += 1 : results[word] = 1 }
    results
  end

  def split_words(words)
    no_special_characters = words.downcase.gsub(/[^\w']/, ' ')
    no_special_characters.split(' ').map { |word| word[0] == "'" && word[-1] == "'" ? word[1...-1] : word }
  end
end
