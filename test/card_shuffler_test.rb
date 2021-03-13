require './test/test_helper'
require './lib/card_shuffler'

class CardShufflerTest < MiniTest::Test 
    def setup
        @cs = CardShuffler.new
    end

    def test_it_exists
        assert_instance_of CardShuffler, @cs 
    end
end