require "card"

describe Card do
  subject(:card) { Card.new("K", "spades") }
  describe "#initialize" do
    it "initializes card with suit and type" do
      expect(card.suit).to eq("spades")
      expect(card.type).to eq("K")
    end

    it "throws an ArgumentError if given invalid type or suit" do
      expect { Card.new("Terry", "spades") }.to raise_error(ArgumentError)
      expect { Card.new("K", "daisies") }.to raise_error(ArgumentError)
    end
  end

  describe "#to_s" do
    it "prints the card as a string" do
      expect(card.to_s).to eq("K_spades")
    end
  end
end
