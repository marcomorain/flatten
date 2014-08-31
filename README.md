flatten
=======

A Ruby utility `Lists::flatten` that flattens arbitrarily nested lists into a list.

## Usage

```Ruby
include Lists
numbers = flatten([1, [2], 3, [4, 5]])
=> [1, 2, 3, 4, 5]
```