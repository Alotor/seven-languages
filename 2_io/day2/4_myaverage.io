List sum := method(
    accum := 0
    self foreach(number, accum = accum + number)
    accum)

List myAverage := method(self sum / self size)

list(2,2,3,3,4,4,5,5) myAverage println


