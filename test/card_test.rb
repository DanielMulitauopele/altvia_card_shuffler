require './test/test_helper'
require './lib/card'

class CardTest < MiniTest::Test
    def setup
        @card = Card.new
    end

    def test_it_exists
        assert_instance_of Card, @card
    end
end