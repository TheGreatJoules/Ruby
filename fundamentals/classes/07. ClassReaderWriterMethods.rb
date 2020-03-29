#!/usr/bin/ruby

class Animal
	attr_accessor :name
	attr_writer :color
	attr_reader :legs, :arms
	
	@@species = ['cat', 'cow', 'dog', 'duck', 'horse', 'pig']
	@@current_animals = []
	
	def self.species
		@@species
	end
	
	def self.species=(array=[])
		@@species = array
	end
	
	def self.current_animals
		@@current_animals
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
		@@current_animals << self
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

Animal.species = ['frog', 'fish']
puts Animal.species.inspect
animal2 = Animal.create_with_attributes("Quack!", "white")
puts animal2.noise
puts animal2.color
puts Animal.current_animals.inspect