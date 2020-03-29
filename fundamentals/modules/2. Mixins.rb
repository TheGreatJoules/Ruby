#!/usr/bin/ruby
module ContactInfo
	attr_accessor :first_name, :last_name, :city, :state, :zip_code
	
	def full_name
		return @first_name + " " + @last_name 
	end
	
	def city_state_zip
		csz = @city
		csz += ", #{@state}" if @state
		csz += " #{@zip_code}" if @zip_zip
		return csz
	end
end


class Person
	include ContactInfo
end

class Teacher
	include ContactInfo
	attr_accessor :lesson_plans
end

class Student < Person
	attr_accessor :books, :grades
end

person = Person.new
person.first_name = "Joe"
person.last_name = "Smith"
puts person.full_name