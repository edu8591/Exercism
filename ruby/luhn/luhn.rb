class Luhn

  def self.valid?(input)
    return false unless input.strip.length > 1
    return false if /[^0-9\s]/.match?(input)
    total = 0
    input.reverse.scan(/[0-9]/).map(&:to_i).each_with_index do |number, index|
      if index.odd?
        total += number * 2 > 9 ? number * 2 - 9 : number * 2
      else
        total += number
      end
    end
    (total % 10).zero?
  end
end
