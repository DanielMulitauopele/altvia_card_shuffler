class Deck
    attr_accessor :cards

    def initialize(initial_card)
        @cards = [initial_card]
    end

    def add(new_cards)
        @cards.concat(new_cards)
    end

    def draw(location = nil)
        location == nil ? @cards.slice!(@cards.count / 2) : @cards.slice!(location - 1)
    end

    def shuffle
        @cards.shuffle!
    end

    def create(type = 'Standard')
        @cards = []
        standard_deck = []

        if type == 'Standard'
            standard_values.each do |k, array|
                array.each do |value|
                    standard_deck <<  Card.new(k, value)
                end
            end
        end

        add(standard_deck)
    end

    private

    def standard_values
        values = [
            "Ace", "King", "Queen", "Jack", "Ten", "Nine", "Eight", "Seven", "Six",
            "Five", "Four", "Three", "Two"
        ]

        {
            'Hearts': values,
            'Diamonds': values,
            'Spades': values,
            'Clubs': values,
        }
    end
end