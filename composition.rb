class Aquarium
  attr_reader :fish

	def initialize
		# How do we create composition here?
    @fish = []
	end

  def add_fish_by_name(new_fish_name)
    @fish << Fish.new(new_fish_name)
  end

  def add_fish(new_fish)
    @fish << new_fish
  end

  def remove_fish_with_name(fish_name)
    # find the appropriate fish, remove it from the list, and return it
    @fish.each do |fish_object|
      if fish_object.name == fish_name
        return @fish.delete(fish_object)
      end
    end
  end

  def to_s
    "Aquarium with: #{@fish}"
  end
end

class Fish
  attr_reader :name

	def initialize(name)
		@name = name
	end

	def swim
		puts "*paddle paddle*"
	end

  def to_s
    "Fish: #{@name}"
  end
end


aqua = Aquarium.new
aqua.add_fish(Fish.new("Dory"))
aqua.add_fish_by_name("Nemo")
puts aqua.remove_fish_with_name("Dory")
