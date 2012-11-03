require 'test/unit'

class TicTacToePlayer
end

class TestPlayer < Test::Unit::TestCase
  def test_truthiness
    functionality_implemented = true
    assert( functionality_implemented, failure_message = "Functionality not implemented" )
  end

  def test_respond_turn
	assert(TicTacToePlayer.respond_to?("turn"), failure_mess = "Doesn't respond to turn");
  end
end


