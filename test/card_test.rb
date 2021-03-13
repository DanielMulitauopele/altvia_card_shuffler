require './test/test_helper'
require './lib/card'

class CardTest < MiniTest::Test
    def setup
        @card = Card.new(
            suit = 'Hearts',
            value = 'Nine'
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
        expected = 'Nine'
        actual = @card.value

        assert_equal expected, actual
    end

    def test_it_has_a_color
        skip
    end

    def test_it_has_a_type
        skip
    end
end