=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

#  'Acronym' class is designed to parse a phrase and pick the first letter of each word and return an acronym
class Acronym
  def self.abbreviate(phrase)
    acronym = String.new
    separate_words(phrase).each { |word| acronym += word.split('').first.upcase }
    acronym
  end

  def self.separate_words(phrase)
    words_array = phrase.split(' ')
  end

  def self.remove_special_characters(words_array)
    words_array.each do |word|

    end
  end
  private_class_method :separate_words, :remove_special_characters
end

puts Acronym.abbreviate('first in, first out')
