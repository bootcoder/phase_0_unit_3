## U3.W7: SQLZoo

####I worked on this challenge [by myself, with: ].



### My Quiz Results:
<!-- Include the link to your image (saved in the imgs folder) to display it inline. -->

<a href="https://www.dropbox.com/s/3hru1wpvzxy4i4j/SQL_ZOO_screen_grab.jpg">Results</a>





### Reflection


### What parts of your strategy worked? What problems did you face?

Well the strategy for this challenge was to complete the sql zoo tutorial. 
Problems faced include poorly written questions, a total lack of SQL implementation experience, 
and the unbelievably all so alluring temptation of throwing my MBP out the window.



###What questions did you have while coding? What resources did you find to help you answer them?

### Question: Why is this problem phrased this way. 

The problem gives a query for the Ger-Gre quarterfinal.
Then asks for the names of players that scored against Ger.
A sane person would think that was asking for names from the game mentioned.
Instead, the correct query returns ALL players from ALL teams in the table that have scored against Ger.

I spent a full day looking around the web for different ways to solve this.
Finally I queried the names of the individuals returned in the correct query,
found them to be on other teams, and adjusted my query to match. 


Join Problem 8:

This query shows all goals scored in Germany-Greece quarterfinal.
Show names of all players who scored a goal against Germany.



	SELECT DISTINCT player
	FROM game JOIN goal ON matchid = id 
	WHERE (team1='ger' OR team2 = 'ger') AND teamid!='GER'

### Question: Why does one solution work and the other not!

Join Problem 13:

I spent hours plugging in the first code example below in every conceivable combination.
All returned either an line error or a corrupt database statement.

### My Solution:

	SELECT mdate, team1,
	SUM(CASE WHEN teamid = team1 THEN 1 ELSE 0 END) score1,
	team2,
	SUM(CASE WHEN teamid = team2 THEN 1 ELSE 0 END) score2
	FROM game JOIN goal ON matchid = id GROUP BY mdate, matchid, team1, team2

### Correct Solution:

I finally broke down, cheated a bit, and searched SO for the specific answer to this problem.
The only difference is the inclusion of LEFT JOIN vs: JOIN
DA FuQ! How could I have possibly know that. Moreover, what difference does it make. IDK...But it does apparently.

	SELECT mdate, team1,
	SUM(CASE WHEN teamid = team1 THEN 1 ELSE 0 END) score1,
	team2,
	SUM(CASE WHEN teamid = team2 THEN 1 ELSE 0 END) score2
	FROM game LEFT JOIN goal ON matchid = id GROUP BY mdate, matchid, team1, team2

### Question: Why can I not open the tables given?

I clicked all over the place to try to open the raw table data in the upper right corner.
A very limited view is given and responds to hover by enlarging. But I could not expand to see the
entire data set. This would have been immensely helpful in troubleshooting my way through several of the exercises.






### What concepts are you having trouble with, or did you just figure something out? If so, what?

Not really having trouble with anything so far concept wise. I get it and so far it looks like SQL will be difficult to learn up front but become exponentially easier with time and practice, given that there should be little logic involved with database queries.

### Did you learn any new skills or tricks?

Lots of new skill and tricks. SELECTS, SUM, WHERE, HAVING(sorta), GROUP BY, FROM, JOIN, AVG, MIN, MAX

### How confident are you with each of the Learning Competencies?

I would say very comfortable, except that I didn't see limit in the Tut. Will go and take a look at it on W3.

### Which parts of the challenge did you enjoy?

Burning through the basics of SQL which I was very intimidated by at first.

### Which parts of the challenge did you find tedious?

SPENDING TWO DAYS LOOKING AT THE SAME TWO PROBLEMS, BEING 95% RIGHT AND STILL A MILLION MILES AWAY.
This made me feel like I did before I started DBC Prep. Alone in the coding universe. Aimlessly throwing things against the wall to see if any stick. Super Frustrating!

