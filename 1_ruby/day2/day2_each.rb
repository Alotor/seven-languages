# Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now,
# do the same with each_slice in Enumerable.

def print_array_1
    array_16 = (1..16).to_a

    tmp_arr = []
    array_16.each { |number|
        if tmp_arr.size() == 4
            puts tmp_arr.join ","
            tmp_arr= []
        end

        tmp_arr << number
    }
end

def print_array_2
    array_16 = (1..16).to_a

    array_16.each_slice(4) { |arr|
        if arr.size() == 4
            puts arr.join ","
        end
    }
end

print_array_1
print_array_2
