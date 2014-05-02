# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# 
# class rectangle with instance methods 
# area
# perimeter
# diagonal
# and square?(boolean)
# 
# CLASS Rectangle
# 	
# 	METHOD initialize which takes 2 arguments
# 		set @width = width
# 		set @height = height
# 	END METHOD
# 	
# 	METHOD area
# 		return length * height
# 	END METHOD
# 	
# 	METHOD perimeter
# 		return (length + height) * 2
# 	END METHOD
# 	
# 	METHOD diagonal
# 	 return - use math to find the square root of (length**2 + height**2)
# 	END METHOD
# 	
# 	METHOD square?
# 	 return true if length == width
# 	 return false
# 	END METHOD
# 
# END CLASS




# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  # def ==(other)
  #   (other.width  == self.width && other.height == self.height ) ||
  #   (other.height == self.width && other.width  == self.height )
  # end
  
  def area
  	@width * @height
  end

	def perimeter
		(@width + @height) * 2
	end

	def diagonal
		Math.sqrt(@width**2 + @height**2)
	end

	def square?
		return true if @width == @height
		false
	end

end




# 4. Refactored Solution


# No refactor currently :+(
# Perhaps I will have time to come back over the weekend. But, doubtfull. 



# 1. DRIVER TESTS GO BELOW THIS LINE

square = Rectangle.new(20,20)
rectangle = Rectangle.new(10,20)

p square.area == 400
p square.perimeter == 80
p square.diagonal == 28.284271247461902
p square.square? == true


p rectangle.area == 200
p rectangle.perimeter == 60
p rectangle.diagonal == 22.360679774997898
p rectangle.square? == false


# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# 
# All of it really, after transfering the rspec to driver code writing the pseudo 
# was super easy. Pseudo to initial was like filling in the blanks.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# 
# How do I find the diagonal of a rectangle. I used a new site called google to find the answer.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# 
# None
# 
# Did you learn any new skills or tricks?
# 
# Math.sqrt
# 
# How confident are you with each of the Learning Competencies?
# 
# Very
# 
# Which parts of the challenge did you enjoy?
# 
# Another quickie challenge which is so super great for me. 
# Really getting down to the wire on my list of stuff to do Pre-DBC
# 
# Which parts of the challenge did you find tedious?
# 
# I see your commented out method skeleton there. I wish I had time to 
# refactor my solution and learn how to use self like you are indicating.
# Perhaps I will have a chance this weekend
# Until then No refactor :+(

