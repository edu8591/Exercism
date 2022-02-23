class Luhn
  def self.valid?(input)
    return false unless input.strip.length > 1
    return false if /[^0-9\s]/.match?(input)

    numbers = input.scan(/[0-9]/).map(&:to_i)
    total_sum = 0
    if numbers.length.odd?
      numbers.each_with_index do |number, index|
        if index.odd?
          total_sum += number * 2 > 9 ? number * 2 - 9 : number * 2
        else
          total_sum += number
        end
      end
    else
      numbers.each_with_index do |number, index|
        if index.even?
          total_sum += number * 2 > 9 ? number * 2 - 9 : number * 2
        else
          total_sum += number
        end
      end
    end
    (total_sum % 10).even?
  end
