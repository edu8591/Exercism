class Raindrops
  def self.convert(drops)
    result = ''

    result += 'Pling' if (drops % 3).zero?
    result += 'Plang' if (drops % 5).zero?
    result += 'Plong' if (drops % 7).zero?
    return drops.to_s if result.empty?
    result
  end
end
