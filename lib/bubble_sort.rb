# extra
class Sorter
    def self.bubble_sort(array)
        (array.length).times do
            for i in 0...array.length - 1 do
                if array[i] > array[i + 1]
                    # swap elements
                    array[i], array[i + 1] = array[i + 1], array[i]
                end
            end
        end
        array
    end
end