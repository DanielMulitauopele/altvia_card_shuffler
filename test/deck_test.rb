require './test/test_helper'
require './lib/card'
require './lib/deck'

class DeckTest < MiniTest::Test 
    def setup
        @card1 = Card.new("Hearts", "Nine")
        @card2 = Card.new("Diamonds", "Queen")
        @card3 = Card.new("Spades", "Ace")

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

    def test_it_can_add_more_cards
        @deck.add(@card2)
        @deck.add(@card3)

        expected = 3
        actual = @deck.cards.count

        assert_equal expected, actual 
    end

    def test_it_can_draw_one_card_at_a_time
        @deck.add(@card2)
        @deck.add(@card3)

        expected = @card2
        actual = @deck.draw

        assert_equal expected, actual 
    end

    
end