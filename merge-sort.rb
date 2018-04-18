def merge_sort(list)
    if list.length <= 1
        list
    else
        mid = (list.length / 2).floor
        left = merge_sort(list[0..mid - 1])
        right = merge_sort(list[mid..list.length])
        merge(left, right)
    end
end

def merge(left, right)
    if left.empty?
        right
    elsif right.empty?
        left
    elsif left.first < right.first
        [left.first] + merge(left[1..left.length], right)
    else right.first < left.first
        [right.first] + merge(right[1..right.length], left)
    end
end

random_array = Random.new_seed.to_s.split('')

p merge_sort(random_array)