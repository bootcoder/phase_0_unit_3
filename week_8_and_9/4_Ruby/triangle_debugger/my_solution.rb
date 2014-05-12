# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself, with: Chris Aubuchon].


# 1. Original Solution

# def valid_triangle?(a, b, c, sum) defining the method valid_triangle and saying that it should be passed 4 parameters 3 relating to side and one relating to the sum of said sides.
#   if a != 0 || b != 0 || c != 0 if any of the integers passed as a, b , or c are more than zero see next line
#   if a >= b if the input of a is more than the input of b as evaluated by ruby
#   largest = a largest is a
#   sum += b please pass the value of the evaluated by element to sum and combine it with addition to the value sum currently has
#   else largest = b if that b element is evaluated as being false when compared to a as a >= b then
#   sum += a please add the value a to the current sum integer and set the value of sum to that addition
#   end
#   if c > largest if the input of the parameter c is > the evaluation of a or b 
#   sum += largest add the outcome of the evaluation from a >=b to sums current value
#   largest = c largest is now set to value c
#   else sum += c  if the previous was false add the input c to the current value of sum and replace the value assigned to sum with the value of c + sum 
#   end
#   if sum > largest if the sum after being evaluated by the previous if/else  is larger than the largest or if a + b or b + c or c+ a is greater than the single value of a b or c then the triangle is valid
#   return "true"
#   else return "false"
#   end
#   else return "false" if it cannot be evaluated?
#   end
# end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
  # sum should not be a parameter.  Its value is set based on the input.
# * what is the exact line number the error is appearing?
 #right now it is line 9
# * before you fix the bug, what do you think is causing the error?
  # wrong number of arguments. 

# --- Bug 2 ---
# * what is the exact description of the error?
 # The or should be an and on line 10
# * what is the exact line number the error is appearing?
  # 56
# * before you fix the bug, what do you think is causing the error?
  # all of the inputs need to pass not just one so need to use and instead of or.

# --- Bug 3 ---
# * what is the exact description of the error?
 # a, b, and c are not changed to float.    
# * what is the exact line number the error is appearing?
  # I guess you could say line 11 because they should be immediately converted. 
# * before you fix the bug, what do you think is causing the error?
 #the rspec code runs floats in its assessments.  

# 3. Refactored Solution (Comment the other code to run this)
def valid_triangle?(a, b, c)
  a = a.to_f
  b = b.to_f
  c = c.to_f
  if a + b > c && a + c > b && c + b > a
    true
  else
    false
  end
end




  # sum = 0 # moved sum here and set value to 0
  
#   if a != 0 && b != 0 && c != 0 #changed or to and
  
#   if a >= b
#   largest = a
#   sum += b
#   else largest = b
#   sum += a
#   end
#   if c > largest
#   sum += largest
#   largest = c
#   else sum += c
#   end
#   if sum > largest
#   return "true"
#   else return "false"
#   end
#   else return "false"
#   end
# end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert
  raise "Arguement error" unless yield
end

assert {valid_triangle?(1,1,0.01) == true}
assert {valid_triangle?(115, 252, 277) == true}
assert {valid_triangle?(50, 70, 200) == false}



