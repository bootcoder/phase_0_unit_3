## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
adds files in the current local repo to git staging
to add all current files use:
```
git add .
```

#### branch
command to switch to a different, or new branch from the current one.

#### checkout
allows you to navigate between branches within your repo.


#### clone
```
git clone <URL>
```
will clone a remote repo to you local hard drive.

#### commit
```
commit -a -m "commit msg"
```
commits changed files to your repo

#### fetch
similar to pull but without merging

#### log
try:
```
git log --oneline
git log --graph --decorate --oneline
```
log will simply produce the log of commits on your repo.
#### merge
merge allows you to bring together branches within the master repo.

#### pull
use pull to grab files from remote repo. pull is actually a fetch and a merge together in one command.

#### push
use push to send you local commits up to the remote repo

#### reset
```
git reset --hard HEAD
```
will do is to throw away any uncommitted changes you have and reset your repo to the last commit. You can also specify aparticular commit to roll back to.
### Careful reset is one of the few git commands that can really mess up your day if not used correctly. 

#### rm
removes / deletes a file from your repo

#### status
gives status information such as: which branch you are on, what files have been changed or removed or added. 

## Release 3: Git Workflow

- Push files to a remote repository
- Fetch changes
- Commit locally

### What parts of your strategy worked? What problems did you face?
I thought I would just recite these and move on but I had to do a little research on reset and fetch.

### What questions did you have while coding? What resources did you find to help you answer them?
Reset/Fetch
<a href="https://www.atlassian.com/git/tutorial">Atlassian Git Tuts</a>

### What concepts are you having trouble with, or did you just figure something out? If so, what?
...

### Did you learn any new skills or tricks?
...

### How confident are you with each of the Learning Competencies?
Very confident

### Which parts of the challenge did you enjoy?
Working on something not difficult while I get ready to move across the country is nice.

### Which parts of the challenge did you find tedious?
None
