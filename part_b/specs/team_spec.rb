require('minitest/autorun')
require_relative('../team.rb')


class TestStudent < MiniTest::Test
  def setup
    @players = ["Butterfly", "Fly", "Caterpillar"]
    @team = Team.new("Moth hunters", @players, "Bird")
  end

  def test_name
    assert_equal("Moth hunters", @team.name)
  end

  def test_players
    assert_equal(@players, @team.players)
  end

  def test_coach
    assert_equal("Bird", @team.coach)
  end

  def test_set_coach
    assert_equal("Bird", @team.coach)
  end

  def test_add_player
    @team.add_player("Insect")
    assert_equal(4, @team.players.length)
  end

  def test_check_player__found
    assert_equal(true, @team.check_player("Fly"))
  end

  def test_check_player__not_found
    assert_equal(false, @team.check_player("Joanna"))
  end

  def test_add_points_win
    @team.add_points("win")
    assert_equal(1, @team.points)
  end

  def test_add_points_lose
    @team.add_points("lose")
    assert_equal(0, @team.points)
  end

end
