class Sorter
    def self.merge_sort(array)
        # base case
        return array if array.length <= 1

        middle = array.length / 2
        # sort the left half
        left_half = self.merge_sort(array[0...middle])

        # sort the right half
        right_half = self.merge_sort(array[middle..-1])
        
        # merge the two halves
        sorted = []

        # compare until either side is empty
        until left_half.empty? or right_half.empty?
            # shift removes first element of array and returns it or nil if the array is empty
            left_half.first <= right_half.first ? sorted << left_half.shift : sorted << right_half.shift
        end

        sorted + left_half + right_half
    end
end