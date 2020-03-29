#!/usr/bin/ruby

# 1. Instantiate a file object, give it instructions
file = File.new('temp.txt', 'w')
file.puts "Ruby"
file.print "programming\n"
file.write "is "
file << "fun"
file.close

# 2. Provide a file with a block of instructions
File.open('temp.txt', 'r') do |file|
	# read data from the file
end

# second arguement is the 'mode': r, w, a, r+, w+, a+