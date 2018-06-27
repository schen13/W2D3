require 'rspec'
require 'tdd'
require 'towers_of_hanoi'

describe "#my_uniq" do
  let(:arr) { [1, 2, 2, 3, 5, 3] }
  it "returns unique elements in array" do
    expect(arr.my_uniq).to eq([1, 2, 3, 5])
  end
end

describe "#two_sum" do
  let(:arr) { [-1, 0, 2, -2, 1]}
  it "correctly returns positions summing to 0." do
    expect(arr.two_sum).to eq([[0,4], [2,3]])
  end
  
  it "returns a correctly sorted array" do
    expect([-1, 1, 1, -2, 2].two_sum).to eq([[0,1], [0,2], [3,4]])
  end
end

describe "#my_transpose" do
  let(:arr) { [[0,1,2], [3,4,5], [6,7,8]] }
  it "correctly transposes a nested array." do
    expect(arr.my_transpose).to eq(arr.transpose)
  end 
end

describe "#stock_picker" do
  let(:arr) { [25, 40, 15, 50, 100, 2] }
  it "returns the pair of days with the best profit margin" do
    expect(arr.stock_picker).to eq([15, 100])
  end
end

describe "Towers" do
  let(:starting_board) { [[3,2,1], [], []] }
  subject(:towers) { Towers.new(starting_board) }
  describe "#initialize" do
    it "generates three piles with three discs each" do
      expect(towers.board).to eq([[3,2,1], [], []])
    end
  end
  
  describe "#move" do
    it "correctly moves the top disc to an empty pile" do
      expect(towers.move(0,1)).to eq([[3,2], [1], []])
    end
    
    it "raises an ArgumentError when starting from a tower with no disc" do
      expect { towers.move(1,2) }.to raise_error(ArgumentError)
    end
    
    it "raises an ArgumentError when moving a larger disc on top of a smaller disc" do
      towers.move(0, 1)
      expect { towers.move(0, 1) }.to raise_error(ArgumentError)
    end
  end
  
  let(:victory_board) { [[], [], [3, 2, 1]] }
  subject(:victory_tower) { Towers.new(victory_board) }
  describe "#won" do
    it "correctly identifies a finished board" do
      expect(victory_tower.won?).to be true
    end
    
    it "does not return false positives" do
      expect(towers.won?).to be false
    end
  end
end
