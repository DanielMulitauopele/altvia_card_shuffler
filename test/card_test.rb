require './test/test_helper'
require './lib/card'

class CardTest < MiniTest::Test
    def setup
        @card = Card.new
    end

    def test_it_exists
        assert_instance_of Card, @card
    end

    def test_it_has_a_suit
        
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