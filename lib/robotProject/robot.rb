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

	def right

		size = @directions.length

		for i in 0 .. size
			if @directions[i] == @position[2] 
				i = (i+1)%size
				@position[2]  = @directions[i]
				return @position
		    end
		end

	end

	def left

		size = @directions.length

		for i in 0 .. size
			if @directions[i] == @position[2] 
				
				i = (i-1)%size
			  @position[2]  = @directions[i]
				return @position
		  end
		  
       end
   end

   def set_position(position)
   	@position = position 
   end


end



 