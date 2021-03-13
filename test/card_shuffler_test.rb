require './test/test_helper'
require './lib/card_shuffler'

class CardShufflerTest < MiniTest::Test 
    def setup
        @shuffler = CardShuffler.new
    end

    def test_it_exists
        assert_instance_of CardShuffler, @shuffler 
    end

    def test_it_displays_welcome_message
        assert_output(/Welcome to the Altvia Card Shuffler!\n/) { @shuffler.welcome_message }
    end
end