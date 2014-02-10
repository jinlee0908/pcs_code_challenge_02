#cleaned up indentations

require 'pry'

case ARGV[0]

  when '-p'
		pattern = /^[\w'\.]+/

  when '-s'
  	pattern = /[\w']+$/

  else
    puts "unknown option"
    puts "usage: analyze.rb -p | -s < spec/testfile.txt > spec/histogram.txt"
    exit
end

# throw away the command line option in ARGV so we can get to STDIN
ARGV.shift

# go through STDIN line by line
# use the regular expression to find the right word
# count the word using a hash

counts = Hash.new(0)
STDIN.each_line do |line| 
	counts[pattern.match(line)] +=1
end	
		
# after you've read all the lines, sort the hash so the most frequent words are first
counts_sorted = counts.sort { |a,b| b.last <=> a.last }

# write the hash to STDIN
counts_sorted.each {|key, value| puts "#{key} #{value}\n" }