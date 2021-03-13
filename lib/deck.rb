class Deck
    attr_accessor :cards

    def initialize(initial_card)
        @cards = [initial_card]
    end

    def add(new_card)
        @cards << new_card
    end
end