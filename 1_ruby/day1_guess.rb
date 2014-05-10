# Bouns problem: If you're feeling the need for a little more, write a program that picks a random
# number. Let a player guess the number, telling the player whether or the guess is too low or too
# high.
# (Hint: rand(10) will generate a random number from 0 to 9, and gets will read a string from the
# keyboard that you can translate to an integer.)

puts "I'm thinking in a number from 1 to 10"

target_number = 1 + rand 10

begin
    puts "Tell me your guess... #{target_number}"

    guess = gets

    if guess.to_i() > target_number
        puts "Less..."
    elsif guess.to_i() < target_number
        puts "More..."
    else
        puts "Correct!!"
    end
end while guess.to_i() !=  target_number
