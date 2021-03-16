require './lib/card'
require './lib/deck'

class CardShuffler
    attr_reader :deck, :current_user

    def initialize
        initial_card = Card.new("Spades", "Ace")
        @deck = Deck.new(initial_card)
        @current_user = 'gamer'
        @in_magic_trick = false
    end

    def welcome_message
        puts "Welcome to the Altvia Card Shuffler!"
        sleep (2.5)
        puts "This program shuffles cards..."
        sleep(2.5)
        puts "yeah...not that cool. But don't blame me, I didn't make myself."
        sleep(2.5) 
    end

    def introductions
        puts "Anywho. What's your name?"
        @current_user = gets.chomp

        puts "#{@current_user}? That's cool. Cool cool cool. Ok #{@current_user}." 
        sleep(2.5)
    end

    def start
        puts "So I could show you some shuffled cards...but"
        sleep (2.5)
        puts "...wanna see a magic trick instead?"
        sleep(2.5)
        puts "Up to you. Yes or no. Type Y if you wanna have fun, or N if you're a wet blanket and I'll just leave you alone."

        while true
            user_input = gets.chomp
            process_input(user_input)
        end
    end

    def process_input(user_input)
        if @in_magic_trick
            user_input.downcase == "random" ? @deck.draw : @deck.draw(user_input.to_i)
        else
            input_commands[user_input.upcase.to_sym].call 
        end
    end

    private

    def input_commands
        {
            'Y': method(:run_magic_trick),
            'N': method(:quit)
        }
    end

    def run_magic_trick
        @in_magic_trick = true
        puts "Ah sweet! I knew you were a gamer."
        sleep(2)
        puts "Ok let's do it."
        sleep(2)
        puts "So...let's use a standard deck, shall we?"
        @deck.create
        sleep(2)
        puts "Ok. What we have here, #{@current_user}, is a regular deck. See? I'll show you the first 3 cards."
        sleep(2)
        puts "Here we have the #{@deck.cards.first.name}, and next the #{@deck.cards[1].name}, and lastly, the #{@deck.cards[2].name}."
        sleep(2)
        puts "Ah wait. This is a new deck. We'll need to shuffle..."
        @deck.shuffle
        sleep(2)
        puts "Ok. Here are the new top 3 cards. This time the first card is the #{@deck.cards.first.name}, and next the #{@deck.cards[1].name}, and lastly the #{@deck.cards[2].name}."
        sleep(2)
        puts "Alright. So pick a card. Any card. If you want to take the first card, type 1. If you want to take the last card, type 0. If you want the 15th card, type 15. Whichever you want. Or if you want a random card, type random."
    end

    def random_draw
        @deck.draw
    end

    def quit
        sleep(2)
        abort "Ah fine. It's not like my feelings are hurt or anything. Bye, I guess."
    end
end