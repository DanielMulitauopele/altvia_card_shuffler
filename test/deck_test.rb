require './test/test_helper'
require './lib/card'
require './lib/deck'

class DeckTest < MiniTest::Test 
    def setup
        @deck = Deck.new
    end

    def test_it_exists
        assert_instance_of Deck, @deck
    end
end