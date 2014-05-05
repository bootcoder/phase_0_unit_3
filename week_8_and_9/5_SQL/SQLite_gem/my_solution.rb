# U3.W8: Using the SQLite Gem

# I worked on this challenge [by myself, with:]



require 'sqlite3'

$db = SQLite3::Database.open "congress_poll_results.db"



# initial solution

# def print_arizona_reps
#   puts "AZ REPRESENTATIVES"
#   puts $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
# end


# def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
#   puts "LONGEST SERVING REPRESENTATIVES"
#   reps = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
#   reps.each {|rep| puts rep.first + " - " + rep.last.to_s}
# end

# def print_lowest_grade_level_speakers
#   puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th Grade.)"
#   puts $db.execute("SELECT name FROM congress_members WHERE grade_current < 8")
# end

# def print_separator
#   puts 
#   puts "------------------------------------------------------------------------------"
#   puts 
# end

# def print_state_reps(*states)
#   states.each do |state| 
#     puts "#{state} Representatives: "
#     puts $db.execute("SELECT name FROM congress_members WHERE location = '#{state}' ORDER BY years_in_congress")
#     puts
#   end
# end



# refactored solution -- sampled from Christiane's solution


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  puts $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
   if minimum_years.class == Integer #checks data type to prevent INJECTION
    reps_years = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > ?", "#{arg}") #using placehoder for the query
    reps_years.each { |rep_year| puts rep_year[0] + " - " + rep_year[1].to_s }
  end 
end

def print_lowest_grade_level_speakers
   puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
   grade_level = $db.execute("SELECT grade_current FROM congress_members WHERE grade_current < 8")
   puts grade_level
end

def print_state_reps(*states)
  puts "REPRESENTATIVES by State"
  states.each do |state|
  	if state.length == 2 #prevents INJECTION  
  		reps = $db.execute("SELECT name FROM congress_members WHERE location = ?", "#{state}") #using placeholder 
    	reps.each { |rep| puts rep[0] + " - " + state }
  	end
  end
end 

def print_reps_votes_received
  puts "Representatives by Votes received."
  politicians = $db.execute("SELECT name, COUNT(voter_id) FROM congress_members JOIN votes ON (congress_members.id = votes.politician_id) GROUP BY 1 ORDER BY 2 DESC") 
  politicians.each {|rep| puts rep[0] + " - " + rep[1].to_s + " votes" }
end 


def print_reps_voters
  puts "REPRESENTATIVE AND VOTERS"
  reps = $db.execute("SELECT congress_members.name, congress_members.id FROM congress_members")

  reps.each do |rep| 
    voters = $db.execute("SELECT voters.first_name, voters.last_name FROM voters, votes WHERE voters.id = votes.voter_id AND votes.politician_id = #{rep[1]} ORDER BY last_name")
    rep_name = "\n" + rep[0] + ":\n"  
    voters.each { |voter| rep_name += voter[0] + " " + voter[1] + ", " }
    rep_name.slice!(rep_name.length-2,rep_name.length)
    puts rep_name
  end 
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

print_arizona_reps

print_separator

print_longest_serving_reps(35)

print_separator
print_lowest_grade_level_speakers 


print_separator
print_state_reps('NJ', 'NY', 'MI', 'FL', 'AL')

print_separator
print_reps_votes_received

print_separator
print_reps_voters



##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?
# 
# The $db is the call to access the database. The SQLite3 gem allows ruby to interact with
# said database using strings as passed statements.
#   
# Try to use your knowledge of ruby and OO to decipher this as well as 
# how the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# 
# $db.execute is the command or function call which initiates a database query.
# Without it there would be no way of starting the process of talking to the DB.
# $dbexecute takes a single arguemnt as a string which contains the relevent SELECT statement.
# 
# If you're having trouble, find someone to pair on this explanation with you.




