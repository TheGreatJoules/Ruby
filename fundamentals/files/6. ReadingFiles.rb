#!/usr/bin/ruby

# Two ways to open files for reading/writing

# 1. Instantiate a file object, give it instructions
file = File.new('temp.txt', 'w')
file.puts "Ruby"
file.print "programming\n"
file.write "is "
file << "fun"
file.close

# 2. Provide a file with a block of instructions
File.open('temp.txt', 'r') do |file|
	while line = file.gets
		puts "** " + line.chop.reverse + " **"
	end
end

# if you know what you want to read every line,
# each_line will be easier
File.open('temp.txt', 'r') do |file|
	file.each_line {|line| puts line.upcase }
end

# second argument is the 'mode': r, w, a, r+, w+, a+