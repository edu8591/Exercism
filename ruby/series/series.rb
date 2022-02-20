=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  attr_reader :digits

  def initialize(digits)
    @digits = digits.split('')
  end

  def slices(size)
    arr = []
    i = 0
    raise ArgumentError if size > digits.length

    while i + size <= digits.length
      arr << digits[i, size].join
      i += 1
    end
    arr
  end
end
