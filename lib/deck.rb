class Deck
    attr_accessor :cards
    
    def initialize(initial_card)
        @cards = [initial_card]
    end
end