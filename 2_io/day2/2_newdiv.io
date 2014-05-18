Number oldDiv := Number getSlot("/")
Number / := method(number,
    if(number == 0, 0, self oldDiv(number)))

(1/2) println
(1/0) println
