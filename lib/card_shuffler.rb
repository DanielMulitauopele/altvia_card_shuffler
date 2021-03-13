require './lib/card'
require './lib/deck'

class CardShuffler
    attr_reader :deck, :current_user

    def initialize
        initial_card = Card.new("Spades", "Ace")
        @deck = Deck.new(initial_card)
        @current_user = 'gamer'
    end

    def welcome_message
        puts "Welcome to the Altvia Card Shuffler!"
        sleep (3)
        puts "This program shuffles cards..."
        sleep(3)
        puts "yeah...not that cool. But don't blame me, I didn't make myself." 
        sleep (3)
        puts "Wanna see a magic trick instead?"
        sleep (3)
        puts "Type Y if you wanna have fun, or N if you're a wet blanket and I'll just leave you alone."
    end

    def start 
        while true
            user_input = gets.chomp
            process_input(user_input)
        end
    end

    def process_input(user_input)
        input_commands[user_input.upcase.to_sym].call
    end

    private

    def input_commands
        {
            'Y': method(:run_magic_trick),
            'N': method(:quit)
        }
    end

    def run_magic_trick
        puts "Ah sweet! You're a gamer."
        puts "Ok let's do it."
    end

    def quit
        abort "Ah fine. It's not like my feelings are hurt or anything. Bye, I guess."
    end
end