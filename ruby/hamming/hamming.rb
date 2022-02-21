=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError unless strand_a.length == strand_b.length

    distance = 0
    strand_a.each_char.with_index { |letter, i| distance += 1 if letter != strand_b[i] }
    distance
  end
end
