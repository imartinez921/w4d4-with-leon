require "game"


describe Game do

  describe "#initialize" do
    subject(:game){Game.new}

    it "sets stack as an array with 3 subarrays" do
      expect(game.stack.length).to eq(3)
      expect(game.stack[0].is_a?(Array)).to eq(true)
    end

    it "sets first subarray to start with 4 discs with largest disc at the bottom" do
      expect(game.stack[0].length).to eq(4)
      expect(game.stack[0]).to eq(game.stack[0].sort.reverse)
    end
  end

  describe "#move" do
    let(:game) { [[3,2],[1,4],[]] }
    it "gets two numbers as input from the user (eg. 4 6)"
    
    # context "when moving a disc" do
    it "raises an error if top disc of destination pile is > than current disc" do
      expect{ game }.to raise_error("CANNOT PUT HERE")
    end

      it "adds to pile if error is not raised"
    # end

  end





end


  
  # move
  ### args are 2 nums (pile to push to, pile to pop from)
  ### check nums are valid stacks
  ### check if any other subarray.length is 3 and == subarray.sort

  # won?
  ###


  



