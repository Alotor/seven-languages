# Define a new object with a slot sayHello
Test := Object clone
Test sayHello := method("hello world" println)

# Execute the slot by name
slotName := "sayHello"

targetSlot := Test getSlot(slotName)
targetSlot()


