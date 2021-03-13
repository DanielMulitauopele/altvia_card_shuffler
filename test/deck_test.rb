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
        stack = [@card2, @card3]
        @deck.add(stack)

        expected = 3
        actual = @deck.cards.count

        assert_equal expected, actual 
    end

    def test_it_can_draw_one_card_at_a_time
        stack = [@card2, @card3]
        @deck.add(stack)

        expected = @card2
        actual = @deck.draw

        assert_equal expected, actual 
    end

    def test_it_can_draw_specific_card
        stack = [@card2, @card3]
        @deck.add(stack)

        expected = @card1
        actual = @deck.draw(1)

        assert_equal expected, actual 
    end

    def test_it_can_shuffle_cards
        stack = [@card2, @card3]
        @deck.add(stack)

        expected = [@card1, @card2, @card3]
        actual = @deck.shuffle

        refute_equal expected, actual 
    end

    def test_it_can_create_standard_playing_deck
        stack = [@card2, @card3]
        @deck.add(stack)

        expected_count = 3
        actual_count = @deck.cards.count

        assert_equal expected_count, actual_count

        @deck.create

        expected = 52
        actual = @deck.cards.count

        assert_equal expected, actual
    end
end