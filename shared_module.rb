module Shootable
	def shoot_lasers_from_eyes
		puts "PEW PEW PEW!"
	end

	def barf_colors
		puts "Taste the rainbow!"
	end
end

class Tyrannosaurus
	attr_reader :id

	include Shootable
	@@next_id = 0
	@@running_strength = 80

	def initialize
		@id = @@next_id
		@@next_id += 1
	end

	def self.num_tyrannosauruses
		@@next_id
	end

	def self.check_strength
		puts "Your current running strength: #{@@running_strength}"
	end

	def self.increase_strength
		@@running_strength += 1
	end
end

class AI
	FLEXIBILITY = 20

	def get_flexibility
		p self.class
		self.class::FLEXIBILITY
	end
end

class Robot < AI

	class IsTooRusty < StandardError
	end

	include Shootable
	FLEXIBILITY = 10

	def check_flexibility
		raise IsTooRusty
		puts "Mobility is: #{FLEXIBILITY}"
	end
end

bleeper = Robot.new
p bleeper.get_flexibility
ai = AI.new
p ai.get_flexibility

# Robot::IsTooRusty

p Robot::Thing.new
# How can we refactor this code?

barney = Tyrannosaurus.new
# p barney.id
# blarney = Tyrannosaurus.new
# 50.times { Tyrannosaurus.new }
# p blarney.id
# p Tyrannosaurus.num_tyrannosauruses

# barney.shoot_lasers_from_eyes
# barney.barf_colors

# bleeper.shoot_lasers_from_eyes
# bleeper.barf_colors

# Tyrannosaurus.check_strength
# Tyrannosaurus.increase_strength
# Tyrannosaurus.check_strength
