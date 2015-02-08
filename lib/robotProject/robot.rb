class Robot

	attr_reader :position

	def initialize(x_coord, y_coord, orientation)
		@position = []
		@position[0] = x_coord.to_i
		@position[1] = y_coord.to_i
		@position[2] = orientation
		@directions = ["NORTH","EAST","SOUTH","WEST"]
	end

	def move

		if @position[2] == "EAST"
			@position[0] += 1
		elsif @position[2] == "WEST"
			@position[0] -= 1
		elsif @position[2] == "NORTH"
			@position[1] += 1
		elsif @position[2] == "SOUTH"
			@position[1] -= 1
		end

		return @position
	end
end