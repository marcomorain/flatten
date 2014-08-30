
def flatten(list)
  # Flattening a list can be decomposed into 2 steps:
  # - a depth-first traversal.
  # - collecting the elements into an array.
  def depth_first(list, visitor)
    if list.is_a? Enumerable
      list.each {|e| depth_first(e, visitor) }
    else
      visitor.call(list)
    end
  end

  result = []
  depth_first_traversal(list, -> (x) { result << x } )
  result
end

describe 'flatten' do

  it 'can flatten empty lists' do
    expect(flatten []).to eq []
  end

  it 'can flatten flat lists' do
    expect(flatten [1, 2, 3]).to eq [1, 2, 3]
  end

  it 'can flatten nested lists' do
    expect(flatten([1,2,3, [4, 5]])).to eq [1,2,3,4,5]
  end

end