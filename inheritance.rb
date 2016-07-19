class Animal
	def run
		puts "GALLOP GALLOP GALLOP"
	end
end

class Mammal < Animal
  def initialize
    @steps = 0
  end

  def run
    puts "blorp"
    @steps += 1
  end
end

class Dog < Mammal
  def run
    @steps += 3
    puts "bounce woof bounce"
    super
  end
end

fido = Dog.new
p fido.run # How do we make this work?
