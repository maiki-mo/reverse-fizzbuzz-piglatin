def linear_search(array, input)
    for elements in array
        int_el = elements.to_i
        if int_el == input
            return true
        else
            return false
        end
    end
end
    
random_array = Random.new_seed.to_s.split('')

p linear_search(random_array, 2)