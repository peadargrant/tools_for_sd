# Git commands
# Peadar Grant

# Setup git with name and e-mail (included in log messages)
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
# ... loads of other config options to learn about as you go on

# Initialise a Git repository in current working directory
git init .
# creates the .git folder
# done once per project

# Show the state of all files
git status

# "Build" a commit by adding one or more files (each)
git add filename.txt
# can do this for many files before committing

# "Commit" changes added with message
git commit -m 'message goes here'
# if you omit -m it will pop up an editor

# Show the difference(s) in a particular file
git diff filename.txt

# Restore a file to its last committed version
git restore

# Show log of commits (note ID for each)
git log
git log --online # condensed form

# Show differences between two commits
git diff HEAD HEAD~2
git diff HEAD previous_commit_id_here
# many possibilities here! 

# Roll back files to previous state
git checkout commit_id_here
# careful here!

