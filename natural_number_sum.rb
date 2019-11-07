def natural_numbers_sum(num, sum = 1)
    # Base case
    return sum if num == 1
    # Recursive step
    return natural_numbers_sum(num - 1, sum + num)
end

puts natural_numbers_sum(10)
