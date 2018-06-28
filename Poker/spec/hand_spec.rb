require 'hand'
require 'deck'
require 'card'

describe Hand do

  subject(:hand) { Hand.new }
  let(:card) { double("card") }
  let(:deck) { double("deck") }
  describe "#initialize" do
    it "begins as an empty array / hand" do
      expect(hand.cards). to be_empty
    end
  end

  describe "#draw_cards" do
    # it "calls Deck's #draw_cards" do
    #   expect(deck).to_receive(:draw_cards).with(3)
    #   hand.draw_cards(3)
    # end

    it "adds the drawn cards to hand" do

    end

  end
  describe "#discard_cards" do
    it "discards the specified cards" do
      hand_count = hand.cards.count
      hand.discard_cards(1,2)
      expect(hand.cards.count).to eq(hand_count - 2)
    end

    # it "calls Deck's #discard_cards" do
    #   expect(deck).to_receive(:discard_cards).with(card, card)
    #   hand.discard_cards(1,2)
    # end

  end

  describe "#check_hand" do

    it "returns the best hand a player has" do
    hand.cards = []  
    end
  end


end
