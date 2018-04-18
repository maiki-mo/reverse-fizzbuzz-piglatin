def insertion_sort(array)
    i = 0
    while i < array.size
        current = array[i]
        while i > 0 && array[i - 1] > current
            array[i] = array[i - 1]
            i -= 1
        end
        array[i] = current
        i += 1
    end
    p array
end

random_array = Random.new_seed.to_s.split('')

insertion_sort(random_array)