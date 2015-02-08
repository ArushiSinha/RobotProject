#Launches the application
class Launch

	def initialize
		@parser = Parser.new
	end

	def start

    begin
        
        
        position = gets.chomp
        command = gets.chomp
        @parser.parse_position(position)
        #robot = Robot.new(x_coord, y_coord, direction)
        puts @parser.parse_command(command)
        #puts @robot.get_position
        

      end while position != 'END'
    


   # def start_test
    #  parser = CalculatorParser.new
     # input = Kernel.gets.chomp
      #cmd = parser.parse(input)      
    #end


     end

  	#def check
	#	input = Kernel.gets.chomp
    #	@par.parsing(input)
  	#end
end

