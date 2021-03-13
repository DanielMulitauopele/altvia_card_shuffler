class Deck
    attr_accessor :cards

    def initialize(initial_card)
        @cards = [initial_card]
    end

    def add(new_card)
        @cards << new_card
    end

    def draw(location = nil)
        location == nil ? @cards.slice!(@cards.count / 2) : @cards.slice!(location - 1)
    end

    def shuffle
        @cards.shuffle!
    end
end