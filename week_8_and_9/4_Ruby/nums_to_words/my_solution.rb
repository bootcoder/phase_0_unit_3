# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# 
# PROGRAM NOTES
# valid inputs range from 0 to 1000 in real positive int's

# make a function in_words which takes a single number as its input and
# outputs the number in English text. Must complete through 100 higher if you 
# feel lucky. Well do you feel lucky...Punk

# FUNCTION in_words which takes a single integer argument.
# 	
# 	variable num_string = ""
# 	
# 	CASE LOOP 20 - 99
# 	When 20 push twenty and minus 20 from num
# 	..
# 	WHEN 90 push ninety and minus 20 from num
# 		
# 	
# 	CASE LOOP 0-19
# 		when 0
# 			.. push the English text
# 		when 19
# 	END CASE
#		
#		return English text
#		
# END FUNCTION
# 	
# 	

# 3. Initial Solution

def in_words(num)

	num_string = ""
	
	return "zero" if num == 0

	case num
	when 100
		return "one hundred"
	when 101..199
		num_string << "one hundred and "
		num -= 100
	when 200
		return "two hundred"
	when 201..299
		num_string << "two hundred and "
		num -= 200
	when 300
		return "three hundred"
	when 301..399
		num_string << "three hundred and "
		num -= 300
	when 400
		return "four hundred"
	when 401..499
		num_string << "four hundred and "
		num -= 400
	when 500
		return "five hundred"
	when 501..599
		num_string << "five hundred and "
		num -= 500
	when 600
		return "six hundred"
	when 601..699
		num_string << "six hundred and "
		num -= 600
	when 700
		return "seven hundred"
	when 701..799
		num_string << "seven hundred and "
		num -= 700
	when 800
		return "eight hundred"
	when 801..899
		num_string << "eight hundred and "
		num -= 800
	when 900
		return "nine hundred"
	when 901..999
		num_string << "nine hundred and "
		num -= 900
	when 1000
		return "one thousand"
	end


	case num
	when 20..29
		num_string << "twenty"
		num -= 20
	when 30..39
		num_string << "thirty"
		num -= 30
	when 40..49
		num_string << "forty"
		num -= 40
	when 50..59
		num_string << "fifty"
		num -= 50
	when 60..69
		num_string << "sixty"
		num -= 60
	when 70..79
		num_string << "seventy"
		num -= 70
	when 80..89
		num_string << "eighty"
		num -= 80
	when 90..99
		num_string << "ninety"	
		num -= 90
	end

	# puts "top num:#{num}\n num_string:#{num_string}\n Count:#{count}"

	case num
	when 1
		num_string << "one"
	when 2
		num_string << "two"
	when 3
		num_string << "three"
	when 4
		num_string << "four"
	when 5
		num_string << "five"
	when 6
		num_string << "six"
	when 7
		num_string << "seven"
	when 8
		num_string << "eight"
	when 9
		num_string << "nine"
	when 10
		num_string << "ten"
	when 11
		num_string << "eleven"
	when 12
		num_string << "twelve"
	when 13
		num_string << "thirteen"
	when 14
		num_string << "fourteen"
	when 15
		num_string << "fifteen"
	when 16
		num_string << "sixteen"
	when 17
		num_string << "seventeen"
	when 18
		num_string << "eighteen"
	when 19
		num_string << "nineteen"
	end

	# puts "bottom num:#{num}\n num_string:#{num_string}"
	num_string

end


# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p in_words(0) == "zero"
p in_words(1) == "one"
p in_words(9) == "nine"
p in_words(21) == "twentyone"
p in_words(77) == "seventyseven"
p in_words(101) == "one hundred and one"
p in_words(999) == "nine hundred and ninetynine"
p in_words(1000) == "one thousand"




# 5. Reflection 

# def needs refactor. this is least dry program ever. 
# essintially all one giant case statement.
# will look around and also give some thought too what can be done to get this down to size.
# decided to go ahead and scale up to 1000. after the groundwork is alyed scaling is
# really easily implemented.
# 
# had an issue with the way I wanted to subtract from num when 
# moving from one case statement to the next. 
# instead of using 
# 
# num - 20
# I had to go with a 
# num -= 20
# 
# Im not entirly sure why this is, although I am sure that It is a stupid thing that
# I am just missing in the moment. Seems like subtraction from a variable should
# operate as I thought....
# if x = 5 
# and I call x - 5
# then x should == 0
# 
# DUH maybe its the altitude on this flight. The subtraction does work but
# because I'm not reassigning it num returns to its previous value after the operation
# hence num -= returns the expected value because it is re-assiagning the value as well as
# subtracting it.
# 
# Talk about silly code moments. WOW
# 
# 	
