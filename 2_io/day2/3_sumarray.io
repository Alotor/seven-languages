sumarray := method(array,
    sum := 0
    array foreach(subarray, subarray foreach(number, sum = sum + number))
    sum)

sumarray(list(list(1,2,3,4,5), list(1,2,3,4,5))) println
