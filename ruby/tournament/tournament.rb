
class Tournament
  attr_accessor :teams
  @teams = {}
  def self.tally(input)
    splited_string = input.split(';')
    splited_string.each_with_index do |item, index|
      next if index == 2

      @teams[item] ||= {
        'MP' => 0,
        'W' => 0,
        'D' => 0,
        'L' => 0,
        'P' => 0
      }
      if splited_string.last == 'win' && index.zero?
        points_to_winner(item)
      elsif splited_string.last == 'lose' && index == 1
        points_to_winner(item)
      elsif  splited_string.last == 'draw'
        @teams[item]['MP'] += 1
        @teams[item]['D'] += 1
        @teams[item]['P'] += 1
      else
        @teams[item]['MP'] += 1
        @teams[item]['L'] += 1
      end
    end
    reply = ["Team                           | MP |  W |  D |  L |  P"]

    @teams.each do |key, value|

      reply << "#{key}              |  #{value['MP']} |  #{value['W']}|  #{value['D']} |  #{value['L']} |  #{value['P']}"
    end

    reply.join('\n')
  end

  def self.points_to_winner(team)
    @teams[team]['MP'] += 1
    @teams[team]['W'] += 1
    @teams[team]['P'] += 3
  end

end