require './lib/card'
require './lib/deck'

class CardShuffler
    attr_reader :deck

    def initialize
        initial_card = Card.new("Spades", "Ace")
        @deck = Deck.new(initial_card)
    end

    def welcome_message
        puts "Welcome to the Altvia Card Shuffler!"
        puts "This program shuffles cards..."
        puts "but that's a little boring. Wanna see a magic trick instead?"
        puts "Type Y if you, or N if you're a lame and I'll just leave you alone."
    end

    def start 
        while true
            user_input = gets.chomp
            process_input(user_input)
        end
    end

    def process_input(user_input)
        input_commands[user_input.to_sym].call
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