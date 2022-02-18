=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = generate_matrix_rows(matrix)
    @columns = generate_matrix_columns
  end

  def generate_matrix_rows(matrix)
    matrix.lines(chomp: true).map do |string|
      string.strip.split(' ').map(&:to_i)
    end
  end

  def generate_matrix_columns
    rows.transpose
  end
end
