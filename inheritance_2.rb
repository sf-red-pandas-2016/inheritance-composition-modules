class Pet
  attr_accessor :age

	def initialize(options = {})
		@age = options.fetch(:age) { 0 }
	end

	def run
		puts "*GALLOP GALLOP GALLOP*"
	end
end

class Dog < Pet
	def initialize(options = {})
		@name = options.fetch(:name) { "Fido" }
		super
	end

	def speak
		puts "#{@name} says woof!"
	end
end

class Cat < Pet
	def initialize(options = {})
		@name = options.fetch(:name) { "Fluffy" }
		super
	end

	def speak
		puts "#{@name} says meow!!"
	end
end

scott = Dog.new(name: "Scott")
heather = Cat.new(name: "Heather")

scott.speak
heather.speak

puts "Heather is #{heather.age} years old."
puts "Scott is #{scott.age} years old."
