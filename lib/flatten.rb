module Lists

  # Flatten a list of arbitrarily nested lists
  # into a flat array
  # e.g. [[1,2,[3]],4] -> [1,2,3,4]
  def flatten(item)

    # Flattening a list can be decomposed into 2 steps:
    # - a depth-first traversal.
    # - collecting the elements into an array.

    # Visit each item in the input in a depth-first order. 
    # Call the visitor callback on eahc item.
    def depth_first(item, visitor)
      if item.is_a? Enumerable
        item.each {|e| depth_first(e, visitor) }
      else
        visitor.call(item)
      end
    end

    # Visit all items, collecting them into a list
    result = []
    depth_first(item, -> (x) { result << x } )
    result
  end
end