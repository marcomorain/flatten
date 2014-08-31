require_relative '../lib/flatten.rb'

describe Lists do

  include Lists

  it 'can flatten empty lists' do
    expect(flatten []).to eq []
  end

  it 'can flatten the singlton list' do
    expect(flatten [1]).to eq [1]
  end

  it 'can flatten flat lists' do
    expect(flatten [1, 2, 3]).to eq [1, 2, 3]
  end

  it 'can flatten the requested example input' do
    expect(flatten [[1, 2, [3]], 4]).to eq [1, 2, 3, 4]
  end

  it 'can flatten deeply nested lists' do
    expect(flatten [[[[[1, 2, 3]]],[[3, 2, 1]]], [7, 8, 9]]).to eq [1,2,3,3,2,1,7,8,9]
  end

  it 'can deal with some degenerate cases' do
    expect(flatten [[[[[]]]]]).to eq []
    expect(flatten [[[[[]]],[[[]],[[]]]]]).to eq []
    expect(flatten [[[[[]]],[[[]],[[]]]]]).to eq []
    expect(flatten [[[[[[[[[[1]]]]]]]]]]).to eq [1]
  end

end