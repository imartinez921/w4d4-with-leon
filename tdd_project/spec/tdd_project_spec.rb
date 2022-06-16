require "tdd_project"


describe '#my_uniq' do
  it 'removes duplicates from an array' do
    expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
  end
end

describe '#two_sum' do
  it 'finds all pairs of indices where those elements sum to zero' do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end
end

describe '#my_transpose' do
  it 'converts between the row-oriented and column-oriented representations' do
    expect([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ].my_transpose).to eq([
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ])
  end
end

  
describe '#stock_picker' do 
  subject(:array) {[1,2,3]}
  it 'takes an array of stock prices as an argument' do      #[index of min, index of max]
    expect {stock_picker(array)}.to_not raise_error
    expect {stock_picker("hello")}.to raise_error
  end

  it "should return a two element array with the lowest and highest days" do
      expect(stock_picker([1232,54564,786568,76446,64475,86643,8907545])).to eq([0,6])
  end
end