# Source control lab

## Lab instructions

1. Create a folder called `test_project`.
2. Open PowerShell / Terminal and navigate to this folder.
3. Type `git init` to initalise a git repository here.
4. Copy in at least 1 Python and/or CSV file from your Programming work here.
5. Use `git add filename.py` to add each file to the staging area.
6. Use `git status` to show the working directory status.
7. Snapshot the change using `git commit -m "initial commit"`.
8. Make two simple changes in different places to one file.
9. Use `git status` to confirm git has picked up the change.
10. Use `git diff` to show the line-by-line difference.
11. Add and commit the changed file.
12. Make at least 3 more commits. 

## Submitting lab work

Show your work by typing `git log`.

Run the command again but this time redirecting to a file: `git log > lab_work.txt`.

On your GitLab repository make a new folder called `lab02`.

Drag `lab_work.txt` into this folder with the commit message `lab work`. 

From next class onwards we'll be using our GitLab repository as a *remote* using `git` directly.


