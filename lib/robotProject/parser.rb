class Parser

   def initialize
    @robot = Robot.new(0, 0, "EAST")

    end


    
    

  

   def parse_position(command)
	
	x_coord, y_coord, direction = command.split(" ")
    @pos =  [x_coord.to_i, y_coord.to_i, direction]
    @robot.set_position(@pos)
    return @robot.position 

    #@robot.get_position(x_coord, y_coord, direction)
  
    
    #puts @robot.return_position
    #return @robot.return_position

    end



	def parse_command(command)
    @cmd = command.split(" ")
    #puts @cmd
    size = @cmd.length
    #puts size
    $i = 0
     while $i < size do
     	if @cmd[$i] == "MOVE"
     	   @robot.move
        elsif @cmd[$i] == "LEFT"
     	   @robot.left
     	elsif @cmd[$i] == "RIGHT"
     	   @robot.right
     	end
     	$i = $i + 1
     end
 
   # puts @robot.position
    return @robot.position
    
   end


   
end

