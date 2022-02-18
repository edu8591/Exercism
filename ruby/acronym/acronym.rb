=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

#  'Acronym' class is designed to parse a phrase and pick the first letter of each word and return an acronym
class Acronym
  def self.abbreviate(phrase)
    # acronym = String.new
    # separate_words(phrase).each { |word| acronym += word.split('').first.upcase }
    acronym = separate_words(phrase)
    acronym.map { |word| word[0].upcase }.join
  end

  def self.separate_words(phrase)
    replace_special_characters(phrase).split(' ')
  end

  def self.replace_special_characters(phrase)
    regex = Regexp.new(/\W/)
    phrase.gsub(regex, ' ')
  end
  private_class_method :separate_words, :replace_special_characters
end
