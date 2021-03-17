require 'cards_on_deck'

class CardShuffler
    attr_reader :deck, :current_user

    def initialize
        initial_card = GemCard.new("Spades", "Ace")
        @deck = GemDeck.new(initial_card)
        @current_user = 'gamer'
        @already_shuffled = false

        @website = 'https://immense-reaches-91193.herokuapp.com/'
        @repo = 'https://github.com/DanielMulitauopele/FullStackHouse'
    end

    def welcome_message
        puts "Welcome to the Altvia Card Shuffler!"
        sleep (2.5)
        puts "This program shuffles cards..."
        sleep(2.5)
        puts "yeah...I'm a pretty big deal in these parts."
        sleep(2.5) 
    end

    def introductions
        puts "Anywho. What's your name?"
        @current_user = gets.chomp

        puts "#{@current_user}? That's cool. Cool cool cool. Ok #{@current_user}." 
        sleep(2.5)
    end

    def start
        puts "So I guess I'm supposed to shuffle some cards for you for something...so"
        sleep (2.5)
        puts "...wanna see?"
        sleep(1.5)
        puts "Up to you. Yes or no. Type Y if you wanna see the 2nd coolest thing ever, or N if you're a wet blanket and I'll just leave you alone."

        while true
            user_input = gets.chomp
            process_input(user_input)
        end
    end

    def process_input(user_input)
        input_commands.key?(user_input.upcase.to_sym) ? input_commands[user_input.upcase.to_sym].call : (puts "Nah, that doesn\'t look right, #{@current_user}")
    end

    private

    def input_commands
        {
            'Y': method(:run_shuffle),
            'N': method(:quit),
            'SEND IT!': method(:show_deets)
        }
    end

    def run_shuffle
        @in_magic_trick = true
        puts "Ah sweet! I knew you were a gamer."
        sleep(2.5)
        puts "Ok let's do it."
        sleep(2.5)
        puts "So...let's use a standard deck, shall we?"
        @deck.create
        sleep(2.5)
        puts "Ok. What we have here, #{@current_user}, is a regular deck. See? I'll show you the first 3 cards."
        sleep(3)
        puts "Here we have the #{@deck.cards.first.name}, and next the #{@deck.cards[1].name}, and lastly, the #{@deck.cards[2].name}."
        sleep(3.5)
        puts "Ah wait. This is a new deck. We'll need to shuffle..."
        @deck.shuffle
        sleep(2.5)
        puts "Ok. Here are the new top 3 cards. This time the first card is the #{@deck.cards.first.name}, and next the #{@deck.cards[1].name}, and lastly the #{@deck.cards[2].name}."
        sleep(4.5)
        puts "Welp. That's it...actually...Wanna see something way cooler? If you do, type \'SEND IT!\' Don't forget the exclamation point. Gotta show that passion."
    end

    def show_deets
        puts 'SENNNNNNNDDDDDD ITTTTTT!!!!!'
        sleep(2.5)
        puts "Nice. Ok. Well check out this app! You can press cmd/ctrl + click and it should take you there: #{@website}"
        sleep(3.5)
        puts "Here's the repo if you're a nerd and like that code stuff (same thing with the cmd/ctrl + click): #{@repo}"
        sleep (4)
        abort "Ok see ya!"
    end

    def quit
        sleep(2)
        abort "Ah fine. It's not like my feelings are hurt or anything. Bye, I guess."
    end
end