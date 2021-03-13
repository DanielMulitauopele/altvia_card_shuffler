require './test/test_helper'
require './lib/card'
require './lib/deck'

class DeckTest < MiniTest::Test 
    def setup
        @card1 = Card.new("Hearts", "Nine")
        @deck = Deck.new(@card1)
    end

    def test_it_exists
        assert_instance_of Deck, @deck
    end

    def test_it_starts_with_at_least_one_card
        expected = "Nine of Hearts"
        actual = @deck.cards.first.name

        assert_equal expected, actual 
    end
end