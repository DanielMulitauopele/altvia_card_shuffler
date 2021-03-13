class Card
    attr_accessor :suit, :value

    def initialize(suit, value)
        @suit = suit
        @value = value
    end

    def color
        color_hash[@suit.capitalize.to_sym]
    end

    private

    def color_hash
        {
          'Hearts': 'Red',
          'Diamonds': 'Red',
          'Spades': 'Black',
          'Clubs': 'Black',
        }
    end
end