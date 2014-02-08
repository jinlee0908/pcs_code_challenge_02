## put your solution to code challenge 02 here
require 'pry'

case ARGV[0]

  when '-p'
    pattern = /^\w+\S/ 
    # set up some regular expression for prefixes
  when '-s'
    pattern = /\w+$/
    # set up some regular expression for suffixes
  else
    puts "unknown option"
    puts "usage: analyze.rb -p | -s < input_file > output_file"
    exit
end

# ???? throw away the command line option in ARGV so we can get to STDIN ???

# go through STDIN line by line

counts = Hash.new(0)
STDIN.each_line do |line| 
  match = line[pattern]
  counts[match] += 1
end

sorted = counts.sort_by {|word,count| count}.reverse

puts sorted.map {|word, count| "#{word} #{count}"}


#   use the regular expression to find the right word#   count the word using a hash
# after you've read all the lines, sort the hash so the most frequent words are first
# write the hash to STDIN






