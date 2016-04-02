# Copyright:: Copyright (c) 2016 Daniel Imms
# License::   MIT License

module CocktailSort
  # Sorts an array using cocktail sort.
  def self.sort(array, compare = lambda { |a, b| a <=> b })
    loop do
      swapped = false
      0.upto(array.length - 2) do |i|
        if compare.call(array[i], array[i + 1]) > 0
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
      break unless swapped

      swapped = false
      (array.length - 2).downto(0) do |i|
        if compare.call(array[i], array[i + 1]) > 0
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
      break unless swapped
    end
  end
end
