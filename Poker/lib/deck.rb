require "card"

class Deck
  
  attr_accessor :discard, :cards
  
  def initialize
    @cards = []
    @discard = []
    fill_deck
  end

  def fill_deck
    Card::SUITS.each do |suit|
      Card::TYPES.each do |type|
        cards << Card.new(type, suit)
      end 
    end 
    shuffle_cards!
  end 
  
  def draw_cards(num_cards)
    drawn_cards = []
    num_cards.times { drawn_cards << cards.pop }
    drawn_cards
  end
  
  def discard_cards(*cards)
    cards.each { |card| discard << card }
  end
  
  def shuffle_cards!
    cards.shuffle!
  end
  
  def refill_deck
    discard.count.times do
      cards << discard.pop
    end 
    shuffle_cards!
  end 
  
  
  #END OF CLASS
end