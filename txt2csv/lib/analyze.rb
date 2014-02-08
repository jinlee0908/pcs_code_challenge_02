# Read the command line argument and set up for either hunting prefixes or suffixes, like this:
case ARGV[0]
 
# Outputs prefixes in format which matches what test requires, but still outputs hash: refactor!  Next to tackle IO.
  when '-p'
   
 	require 'pry'

def words_from_string(string)
		string.scan(/^[\w'\.]+/)
	end  

	def count_frequency(words_from_string)
	  counts = Hash.new(0)
	  for word in words_from_string
	    counts[word] +=1
	  end
	  counts_sorted = counts.sort { |a,b| b.last <=> a.last }
	  counts_sorted.each {|key, value| puts "#{key} #{value}\n" }
	end

	p count_frequency(words_from_string("
Mr. Jones
Mr. Jones
Mr. Jones
Mr. Jones
Mr. Jones
Miss Smith
Miss Smith
Miss Smith
Miss Smith
Miss Smith
Miss Smith
Mrs. Wesson
Mrs. Wesson
Mrs. Wesson
Mrs. Wesson
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Jane Wintermute
Frank Franklin
Frank Franklin
Darleen Washington
Darleen Washington
Darleen Washington"))

 
# Outputs suffixes in format which matches what test requires, but still outputs hash: refactor!  Next to tackle IO.
  when '-s'

require 'pry'

    def words_from_string(string)
		string.scan(/[\w']+$/)
	end  

	def count_frequency(words_from_string)
	  counts = Hash.new(0)
	  for word in words_from_string
	    counts[word] +=1
	  end
	  counts_sorted = counts.sort { |a,b| b.last <=> a.last }
	  counts_sorted.each {|key, value| puts "#{key} #{value}\n" }
	end

	p count_frequency(words_from_string("
Mr. Jones
Mr. Jones
Mr. Jones
Mr. Jones
Mr. Jones
Miss Smith
Miss Smith
Miss Smith
Miss Smith
Miss Smith
Miss Smith
Mrs. Wesson
Mrs. Wesson
Mrs. Wesson
Mrs. Wesson
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Dr. Roberts
Jane Wintermute
Frank Franklin
Frank Franklin
Darleen Washington
Darleen Washington
Darleen Washington"))

    
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