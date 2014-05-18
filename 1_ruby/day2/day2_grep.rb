# Write a simple grep that will print the lines of a file having any occurrences of a phrase
# anywhere in that line. You will need to do a simple regular expression match and read lines from
# a file. (This is surprisingly simple in Ruby.) If you want, include line numbers.

exit if ARGV.size() != 2

input_regex = Regexp.new(ARGV[1])
line_count = 0

File.read(ARGV[0]).each { |line|
    line_count = line_count+1
    puts "#{line_count}\t#{line}" if input_regex.match(line)
}
