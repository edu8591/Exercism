=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
class Hamming
  def self.compute(a, b)
    raise ArgumentError unless a.chars.length == b.chars.length

    counter = 0
    a.chars.each_with_index { |letter, i| counter += 1 if letter != b.chars[i] }
    counter
  end
end
