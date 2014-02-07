# Read the command line argument and set up for either hunting prefixes or suffixes, like this:
case ARGV[0]
  when '-p'
    # set up some regular expression for prefixes

	def words_from_string(string)
		string.downcase.scan(/^[\w'\.]+/)
	end  

	def count_frequency(words_from_string)
	  counts = Hash.new(0)
	  for word in words_from_string
	    counts[word] +=1
	  end
	  counts
	end

	p count_frequency(words_from_string("
	Mr. Jones
	Miss Smith
	Mrs. Wesson
	Dr. Roberts
	Miss Smith
	Jane Wintermute
	Mrs. Wesson
	Frank Franklin"))


  when '-s'
    # set up some regular expression for suffixes
  else
    puts "unknown option"
    puts "usage: analyze.rb -p | -s < input_file > output_file"
    exit
end

# throw away the command line option in ARGV so we can get to STDIN



# go through STDIN line by line
#   use the regular expression to find the right word
#   count the word using a hash

# after you've read all the lines, sort the hash so the most frequent words are first

# write the hash to STDIN