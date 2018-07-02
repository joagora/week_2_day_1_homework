class Team
  attr_reader :name, :players, :coach, :points
  attr_writer :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player player_name
    @players << player_name
  end

  def check_player player_name
    return @players.include?(player_name)
  end

  def add_points result
    @points += 1 if result == "win"
  end
end
