class Raindrops
  SOUNDS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

  def self.convert(drops)
    result = ''
    SOUNDS.each_pair { |key, value| result += value if (drops % key).zero? }
    return drops.to_s if result.empty?

    result
  end
end
