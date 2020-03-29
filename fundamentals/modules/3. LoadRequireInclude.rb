#!/usr/bin/ruby
require './ContactInfo.rb'

# load: loads a source file every time it is called
# require: loads a source file only once
# include: includes modules, nothing to do with files

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