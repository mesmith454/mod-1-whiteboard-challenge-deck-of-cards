# require 'pry'
class Deck
    SUIT = ["Hearts", "Clubs", "Diamonds", "Spades"]

    RANK = ["A", "2","3", "4", "5", "6", "7", "8", "9", "J", "Q", "K"]

    @@all = []

    def self.all
        @@all
    end
    def initialize
        @cards = []
        SUIT.each do |suit| 
            RANK.each do |rank|        
                Card.new(suit, rank)
                @cards << self
            end
        end
        @@all << self
    end

    def shuffle
        self.cards = self.shuffle
    end

    def choose_card
        self.cards.delete(self.cards.sample)
        #removes card from deck decrement to 51
    end

end

class Card
    attr_accessor :rank, :suite

    def initialize(rank, suite)
        @rank = rank
        @suite = suite
    end
# binding.pry
end

class User


end