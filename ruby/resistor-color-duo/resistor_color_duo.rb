=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end
class ResistorColorDuo
  attr_reader :colors

  COLOR_VALUES = {
    black: '0',
    brown: '1',
    red: '2',
    orange: '3',
    yellow: '4',
    green: '5',
    blue: '6',
    violet: '7',
    grey: '8',
    white: '9'
  }

  def self.value(colors_arr)
    first_band_value = COLOR_VALUES[colors_arr[0].downcase.to_sym]
    second_band_value = COLOR_VALUES[colors_arr[1].downcase.to_sym]
    (first_band_value + second_band_value).to_i
  end
end