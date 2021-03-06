# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields

Name
User_id
Following
Followers
Tweets
Lists
Favorites

## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->Tweet string
Add photo
Location information

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: One-to-Many. As there is one user that has many tweets.
Also, and I'm going out a limb here, but, the name of the challenge is 'Modeling a one-to-many database - SOLO CHALLENGE.'

## Release 3: Schema Design
<img src="../IMGs/solo_schema.jpg">

## Release 4: SQL Statements

# All user Tweets

```
SELECT user_id, tweet 
FROM twitter
JOIN user ON tweets.tweet_id = user.id
WHERE user_id = "JimBobJoeJunk"
ORDER BY tweets.created_at
```

# Tweets made after last Wednesday

```
SELECT user_id, tweet 
FROM twitter
JOIN user ON tweets.tweet_id = user.id
WHERE user_id = "JimBobJoeJunk" AND created_at > 2014-04-23
ORDER BY tweets.created_at
```

# All tweets associated with Twitter Handle

```
SELECT user_id, tweet 
FROM twitter
JOIN user ON tweets.tweet_id = user.id
WHERE user_id = "JimBobJoeJunk"
ORDER BY tweets.created_at
```

# The twitter handle associated with a tweet_id
```
SELECT user_id
FROM twitter
JOIN user ON tweets.tweet_id = user.id
WHERE tweet_id = "123456"
```

## Release 5: Reflection

## What parts of your strategy worked? What problems did you face?
Has SQL, statements I shall write, schema's I shall design, questions I shall answer.... Seemed to work out :+).

## What questions did you have while coding? What resources did you find to help you answer them?
I feel like user_id and twitter handle should be the same thing.
Hence SQL statements 1 & 3 are the same. Guess I'll find out when I do code review later...

## What concepts are you having trouble with, or did you just figure something out? If so, what?
Definitely could use more study in this department overall. Muscle Memory is my friend. 

## Did you learn any new skills or tricks?
Code block in GFM is ``` wrapper. That's nice.

## How confident are you with each of the Learning Competencies?
With the Competencies I feel very comfortable. With actual implementation...Practice makes perfect.

## Which parts of the challenge did you enjoy?
A SOLO challenge to bang out in under 45 minutes. Awesome Sauce!

## Which parts of the challenge did you find tedious?
None 