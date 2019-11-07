def binary_search(array, to_find)
    high = array.length - 1
    low = 0
    while high >= low
        mid = (high + low) / 2
        if array[mid] == to_find
            return mid
        elsif array[mid] > to_find
            high = mid - 1
        else
            low = mid + 1
        end
    end
    
    return nil
end

def recursive_binary_search(array, to_find, low = 0, high = array.length - 1)
    mid = (high + low) / 2
    
    return nil unless high >= low
    return mid if array[mid] == to_find
    
    if array[mid] > to_find
        return recursive_binary_search(array, to_find, low, mid - 1)
    else
        return recursive_binary_search(array, to_find, mid + 1, high)
    end
end

puts binary_search([1, 3, 6, 9, 12], 3)
puts recursive_binary_search([1, 3, 6, 9, 12], 3)
puts
puts binary_search([1, 3, 6, 9, 12], 2)
puts recursive_binary_search([1, 3, 6, 9, 12], 2)
