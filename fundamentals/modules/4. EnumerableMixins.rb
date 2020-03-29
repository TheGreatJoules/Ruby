#!/usr/bin/ruby

class ToDoList
	include Enumerable
	attr_accessor :items
	
	def initalize
		@items = []
	end
	
	def each
		@items.each {|item| yield item}
	end
end

list = ToDoList.new
list.items = ['laundry', 'dishes', 'vacuum']
puts list.items.select {|i| i.length > 6 }
puts list.select {|i| i.length > 6 }