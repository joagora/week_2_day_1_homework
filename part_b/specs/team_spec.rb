require('minitest/autorun')
require_relative('../team.rb')


class TestStudent < MiniTest::Test
  def test_name
    players = ["Butterfly", "Fly", "Caterpillar"]
    team = Team.new("Moth hunters", players, "Bird")
    assert_equal("Moth hunters", team.name)
  end

  def test_players
    players = ["Butterfly", "Fly", "Caterpillar"]
    team = Team.new("Moth hunters", players, "Bird")
    assert_equal(players, team.players)
  end

  def test_coach
    players = ["Butterfly", "Fly", "Caterpillar"]
    team = Team.new("Moth hunters", players, "Bird")
    assert_equal("Bird", team.coach)
  end

  def test_set_coach
    players = ["Butterfly", "Fly", "Caterpillar"]
    team = Team.new("Moth hunters", players, "Bird")
    assert_equal("Bird", team.coach)
  end

  def test_add_player
    players = ["Butterfly", "Fly", "Caterpillar"]
    team = Team.new("Moth hunters", players, "Bird")
    team.add_player("Insect")
    assert_equal(4, team.players.length)
  end

  def test_check_player__found
    players = ["Butterfly", "Fly", "Caterpillar"]
    team = Team.new("Moth hunters", players, "Bird")
    assert_equal(true, team.check_player("Fly"))
  end

  def test_check_player__not_found
    players = ["Butterfly", "Fly", "Caterpillar"]
    team = Team.new("Moth hunters", players, "Bird")
    assert_equal(false, team.check_player("Joanna"))
  end

  def test_add_points
    players = ["Butterfly", "Fly", "Caterpillar"]
    team = Team.new("Moth hunters", players, "Bird")
    team.win
    assert_equal(1, team.points)
  end


end
