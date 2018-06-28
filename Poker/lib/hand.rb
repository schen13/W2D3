require 'deck'

class Hand < Deck
  
  HANDS = %w(high_card pair two_pair three_of_kind straight flush full_house four_of_kind straight_flush royal_flush).reverse
  
  def initialize
    @cards = []
  end
  
  def check_hand
    flush = false
    straight = false
    first_suit = cards[0].suit
    flush = true if cards.all? { |card| card.suit == first_suit }
  end 
  
  
  def sort_hand
    return self if self.length <=1
    pivot = first
    left = self.drop(1).sort_hand
    right = self.
  end 
end