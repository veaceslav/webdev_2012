require 'test/unit'

class TicTacToePlayer
    BOARD = [:a1,:a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3]
      WINNING_COMBINATIONS = [[:a1, :a2, :a3],
                                [:b1, :b2, :b3],
                                [:c1, :c2, :c3],
                                [:a1, :b1, :c1],
                                [:a2, :b2, :c2],
                                [:a3, :b3, :c3],
                                [:a1, :b2, :c3],
                                [:c1, :b2, :a3]]
    def turn()
        
    end
end

class TestPlayer < Test::Unit::TestCase
  def test_truthiness
    functionality_implemented = true
    assert( functionality_implemented, failure_message = "Functionality not implemented" )
  end

  def test_respond_turn
	assert(TicTacToePlayer.new.respond_to?("turn"), failure_mess = "Doesn't respond to turn");
  end
end


