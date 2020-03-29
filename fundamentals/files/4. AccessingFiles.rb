#!/usr/bin/ruby

# 1. Two ways to open files for reading/writing
file = File.new('temp.txt', 'w')

# Write data to the file
file.close

# 2. Provide a file with a block of instructions
File.open('temp.txt','r') do |file|
	# read data from the file
end

# second argument is the 'mode': r, w, a, r+, w+, a+