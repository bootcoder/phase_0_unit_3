# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# should return 
# fizz for multiples of 3
# buzz for multiples of 5
# fizzbuzz for multiples of 15
# 
# FUNCTION super_fizzbuzz which takes a single array as its argument.
	# array.sort!
	# CREATE empty array
	# EACH LOOP
	# 	IF LOOP
	# 		if divisible by 15 push "fizzbuzz"
	# 		elsif divisible by 3 push "fizz"
	# 		elsif dividable by 5 push "buzz"
	# 		else push element
	# 	END IF
	# END EACH
	# 
	# return new array
# END FUNCTION




# 3. Initial Solution

# def super_fizzbuzz(array)
# 	fizzbuzzed_array = []
# 	array.sort
# 	array.each do |element|
# 		if element % 15 == 0
# 			fizzbuzzed_array << "FizzBuzz"
# 		elsif element % 3 == 0
# 			fizzbuzzed_array << "Fizz"
# 		elsif element % 5 == 0
# 			fizzbuzzed_array << "Buzz"
# 		else
# 			fizzbuzzed_array << element
# 		end
# 	end
# 	fizzbuzzed_array
# end



# 4. Refactored Solution

def super_fizzbuzz(array)
	fizzbuzzed_array = []
	array.each do |element|
		if element % 15 == 0
			fizzbuzzed_array << "FizzBuzz"
		elsif element % 3 == 0
			fizzbuzzed_array << "Fizz"
		elsif element % 5 == 0
			fizzbuzzed_array << "Buzz"
		else
			fizzbuzzed_array << element
		end
	end
	fizzbuzzed_array
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p super_fizzbuzz([1,2,3,4]) == [1,2,"Fizz",4]
p super_fizzbuzz([1,2,3,4,5]) == [1,2,"Fizz",4,"Buzz"]
p super_fizzbuzz([1,2,3,4,5,6,15,21,22]) == [1,2,"Fizz",4,"Buzz","Fizz","FizzBuzz","Fizz",22]





# 5. Reflection 



# What parts of your strategy worked? What problems did you face?
# 
# Strategy was to knock this challenge out super quick.!! Went pretty well.
# 
# What questions did you have while coding? What resources did you find to help you answer them?
# 
# I was trying to find a way to do this with inline ifs but failed. because the next element is not excluded.
# I could compensate for this but the if else if just easier overall at that point.
# 
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# 
# None
# 
# Did you learn any new skills or tricks?
# 
# Nope Sorry. It's review week remember!
# 
# How confident are you with each of the Learning Competencies?
# 
# Very
# 
# Which parts of the challenge did you enjoy?
# 
# I'm SUPER crunched for time before I fly out to S.F. so a quick challenge is mega cool for me.
# 
# 
# Which parts of the challenge did you find tedious?
# 
# None
