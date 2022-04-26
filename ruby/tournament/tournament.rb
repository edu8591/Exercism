
class Tournament

  def self.tally(input)
    return ScoreBoard.no_input if input == "\n" || input.empty? || input.nil?

    parsed_input_hash = ScoreBoard.parse_input(input)
    teams = {}
    parsed_input_hash[:teams].each { |team| teams[team] = Teams.create }

    parsed_input_hash[:lines].each do |line|
      splited = line.split(';')
      ScoreBoard.calculate_scores!(teams, splited)
    end

    teams = ScoreBoard.sort_high_score(teams)

    # puts ScoreBoard.print_score(teams)
    ScoreBoard.print_score(teams)
  end
end

class Teams
  def self.create
    element = {}
    element['mp'] = 0
    element['w'] = 0
    element['d'] = 0
    element['l'] = 0
    element['p'] = 0
    element
  end
end

class ScoreBoard
  @headers = "#{'Team'.ljust(31, ' ')}| MP |  W |  D |  L |  P"
  def self.no_input
    @headers + "\n"
  end

  def self.calculate_scores!(teams, splited_line)
    team1 = splited_line[0]
    team2 = splited_line[1]
    outcome = splited_line[2]
    teams[team1]['mp'] += 1
    teams[team2]['mp'] += 1

    case outcome
    when 'win'
      teams[team1]['w'] += 1
      teams[team1]['p'] += 3
      teams[team2]['l'] += 1
    when 'loss'
      teams[team2]['w'] += 1
      teams[team2]['p'] += 3
      teams[team1]['l'] += 1
    else
      teams[team1]['d'] += 1
      teams[team2]['d'] += 1
      teams[team1]['p'] += 1
      teams[team2]['p'] += 1
    end
  end

  def self.parse_input(input)
    output = { teams: [], lines: input.lines.each { |line| line.gsub!("\n", '') } }
    # p output
    output[:lines].each do |line|
      splited_line = line.split(';')
      output[:teams] << splited_line[0] << splited_line[1]
    end
    output[:teams].uniq!
    output
  end

  def self.sort_high_score(teams)
    teams.sort_by { |team, scores|  [scores['p']* -1, team] }
  end

  def self.print_score(teams)
    results = [@headers]
    teams.each do |team, scores|
      results << "#{team.ljust(31,' ')}|  #{scores['mp']} |  #{scores['w']} |  #{scores['d']} |  #{scores['l']} |  #{scores['p']}"
    end
    results.join("\n") + "\n"
  end
end


# test = {
#   aucas:{score:1},
#   macara:{score:1},
#   emelec:{score:1},
#   barcelona:{score:5},
# }
# test = {
#   'Aucas' => { scores: { 'p' => 1 } },
#   'Emelec' => { scores: { 'p' => 2 } },
#   'LDQ' => { scores: { 'p' => 1 } },
#   'Barcelona' => { scores: { 'p' => 1 } },
#   'Macara' => { scores: { 'p' => 1 } }
# }
# def sort_high_score(teams)
#   teams.sort_by { |team, scores| [team, scores[:scores]['p']] }
# end

# sort_high_score(test)