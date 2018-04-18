def binary_search(an_array, item)
    first = 0
    last = an_array.length - 1

    if an_array.length == 0
        return "#{item} was not found in the array"
    else
        i = (first + last) / 2
        p i
        # if item == an_array[i]
        #     return "#{item} found"
        # else
        #     if an_array[i] < item
        #         return binary_search(an_array[i+1, last], item)
        #     else
        #         return binary_search(an_array[first, i-1], item)
        #     end
        # end
    end
end

last = rand(100)

array = [*1..last]

binary_search(array, 20)