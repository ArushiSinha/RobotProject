class Direction

	def initialize(command , robot)
		@command = command
		@robot = robot
	end

	def move
		"robot moves"
	end

	def left
		"robot turns left"
	end

	def right
		"robot turns right"
	end

end