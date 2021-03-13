require './test/test_helper'
require './lib/card'

class CardTest < MiniTest::Test
    def setup
        @card = Card.new(
            suit = 'Hearts'
        )
    end

    def test_it_exists
        assert_instance_of Card, @card
    end

    def test_it_has_a_suit
        expected = 'Hearts'
        actual = @card.suit

        assert_equal expected, actual
    end

    def test_it_has_a_value
        skip
    end

    def test_it_has_a_color
        skip
    end

    def test_it_has_a_type
        skip
    end
end