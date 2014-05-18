# A method that sustitues part of a string
# "hello".gsub(/([aeiou])/, '<\1>') #=> "h<e>ll<o>"

# Print the string "hello world"
puts "Hello world"

# For the string "hello, Ruby"find the index of the word Ruby
puts "Hello, Ruby.".index(/Ruby/)

# Print your name ten times
10.times do
    puts "test"
end

# Print hte stirng "This is sentence number 1,"where the number 1 changes from 1 to 10
for i in 1..10
    puts "This is sentence number #{i}"
end

# Bouns problem: If you're feeling the need for a little more, write a program that picks a random
# number. Let a player guess the number, telling the player whether or the guess is too low or too
# high.
# (Hint: rand(10) will generate a random number from 0 to 9, and gets will read a string from the
# keyboard that you can translate to an integer.)


