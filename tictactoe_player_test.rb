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
    def turn(move = {})
      if(!move.instance_of? Hash)
          return nil;
      end 
      
      if(!move.has_key?(:owned_by_x) && !move.has_key?(:owned_by_zero))
          return nil;
      end

      if((!move[:owned_by_x].instance_of? Array) && (!move[:owned_by_zero].instance_of? Array))
          return nil;
      end

      return 1;
    end
end

class TestPlayer < Test::Unit::TestCase

  def test_respond_turn
	assert(TicTacToePlayer.new.respond_to?("turn"), failure_mess = "Doesn't respond to turn")
    puts "Test 1"
   end

  def test_turn_hash
    puts "Test 2"
    emptyhash = {"a"=>1}
    assert_nothing_raised(ArgumentError) do
        TicTacToePlayer.new.turn(emptyhash)
    end
  end

  def test_turn_accept_2var_hash
        puts "Test 3"
        val =1
        assert(TicTacToePlayer.new.turn(val).equal?(nil),failure_mess = "Turn accept non hash")

  end

  def test_turn_accept_hash_3
    puts "Test 4"
    thirdhash = {:owned_by_x =>[], :owned_by_zero => []}
    assert_nothing_raised(ArgumentError) do
        TicTacToePlayer.new.turn(thirdhash)
    end
  end
   
  def test_turn_return_not_nil
    puts "Test 5"
    thirdhash = {:owned_by_x =>[], :owned_by_zero => []}
    assert(TicTacToePlayer.new.turn(thirdhash).equal?(1),err_mess = "Turn doesn't return 1 when given right input")
  end

  def test_turn_return_nil_on_non_array_values
    puts "Test 6"
    thirdhash = {:owned_by_x =>1, :owned_by_zero =>"abba"}
    assert(TicTacToePlayer.new.turn(thirdhash).equal?(nil),err_mess = "Turn doesn't return nil when non array values in hash")
  end


end


