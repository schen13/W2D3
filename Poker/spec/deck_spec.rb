require 'deck'

describe Deck do
  subject(:deck) { Deck.new }
  let(:card) { double("card") }
  describe "#initialize" do
    it "starts with an empty discard pile" do
      expect(deck.discard).to be_empty
    end
  end

  describe "#fill_deck" do
    it "fills deck with exactly 52 unique cards" do
      expect(deck.cards.uniq.count).to eq(52)
    end
  end

  describe "#draw_cards" do
    it "adds the correct number of cards from the top of the deck to an array" do
      deck_count = deck.cards.count
      expect(deck.draw_cards(3).count).to eq(3)
      expect(deck.cards.count).to eq(deck_count - 3)
    end
  end

  describe "#discard_cards" do
    it "adds every card in argument to the discard pile" do
      deck.discard_cards(card)
      expect(deck.discard).to include(card)
    end
  end

  describe "#shuffle_cards!" do
    it "shuffles the cards" do
      starting_deck = deck.dup
      expect(deck.shuffle_cards!).to_not eq(starting_deck)
    end
  end

  describe "#refill_deck" do
    context "when the deck runs out of cards" do
      before(:each) do
        deck.cards = []
        deck.discard = [card, card]
      end

      it "empties the discard pile" do
        deck.refill_deck
        expect(deck.discard).to be_empty
      end

      it "refills the deck with the same cards from the discard pile" do
        discard_dupe = deck.discard.dup
        deck.refill_deck
        expect(deck.cards.sort).to eq(discard_dupe.sort)
      end
    end
  end
end
