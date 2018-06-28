class Card
  
  SUITS = %w(spades hearts clubs diamonds)
  TYPES = %w(2 3 4 5 6 7 8 9 10 11 12 13 14)
  
  attr_reader :type, :suit
  
  def initialize(type, suit)
    raise ArgumentError unless SUITS.include?(suit) && TYPES.include?(type)
    @type, @suit = type, suit
  end
  
  def to_s
    if type <= 10
    "#{type}_#{suit}"
    elsif type == 11
      "J_#{suit}"
    elsif type == 12
      "Q_#{suit}"
    elsif type == 13
      "K_#{suit}"
    else
      "A_#{suit}"
    end 
  end 
end 