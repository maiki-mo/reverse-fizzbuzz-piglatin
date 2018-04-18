def bub_sort(array)
    loop do
        swapped = false
        (array.size - 1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end

        break if not swapped
    end

    p array
end

random_array = Random.new_seed.to_s.split('')

bub_sort(random_array)