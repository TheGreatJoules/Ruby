#!/usr/bin/ruby

class Animal
	attr_accessor :name
	attr_writer :color
	attr_reader :legs, :arms
	
	def self.all_species
		['cat', 'cow', 'dog', 'duck', 'horse', 'pig']
	end
	
	def self.create_with_attributes(noise, color)
		animal = self.new(noise)
		animal.color = color
		return animal
	end
	
	def initialize
		@legs = 4
		@arms = 0
		puts "A new animal has been instantiated"
	end
	
	def initialize(noise, legs=4, arms=0)
		@noise = noise
		@legs = legs
		@arms = arms
		puts "A new animal has been instantiated"
	end
	
	def noise=(noise)
		@noise = noise
	end
	
	def noise
		@noise
	end
	
	def color
		"The color is #{@color}"
	end
end


animal2 = Animal.create_with_attributes("Quack!", "white")
puts animal2.noise
puts animal2.color