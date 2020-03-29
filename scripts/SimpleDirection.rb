#!/usr/bin/ruby

NORTH 	= 1
EAST 	= 2
SOUTH	= 3
WEST	= 4

def walk(direction)
	if direction == :north
		# code
		puts "walk north"
	end
end

walk(:north)

num_pallets = 0
weight = 0
while weight < 100 and num_pallets <= 5
	pallet = next_pallet()
	weight += pallet.weight
	num_pallets += 1
end