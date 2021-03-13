class Card
    attr_accessor :suit, :value
    attr_reader :name

    def initialize(suit, value)
        @suit = suit
        @value = value
        @name = "#{@value} of #{@suit}"
    end

    def color
        (@suit && @value) != nil ? color_hash[@suit.capitalize.to_sym] : 'You need to select a suit first'  
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