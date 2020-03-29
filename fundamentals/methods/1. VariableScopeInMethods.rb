#!/usr/bin/ruby

value = 7

def welcome
	puts "Hello World!"
end

def add
	puts 1 + 1
end

# Underscore between words, like vairable names
def longest_word
	words = ['apple', 'pear', 'banana', 'plum']
	longest_word = words.inject do |memo, word|
		memo.length > word.length ? memo : word
	end
	puts longest_word
end

# Method names can have question marks in them
# Useful for tests and booleans
def over_five?
	value = 3
	puts value
end

welcome
add
longest_word 
over_five?
puts value