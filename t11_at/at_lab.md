# at scheduler lab

## Setup

On your XOA virtual machine:

1. Login over SSH.
2. cd into `tools_for_sd` and use `git pull --rebase` to update it.
3. cd into `tools_for_sd_labs` and use `git pull --rebase` to update it also.
4. Make a `lab11` folder and change into it.
5. Change back in to your home directory.
6. Confirm using `pwd` that you are in `/home/administrator`.


## Installation

1. Use `which at` to check if it the `at` scheduler is installed.
2. If required install it using `sudo apt -y install at`.
3. Confirm that the `atd` service is running using `sudo systemctl status atd`.


## Using the at command

### Inline commands

Use the `at` scheduler directly at the command-line, supplying a time 5 minutes into the future.
Type the following at the prompt

	outputfile=/home/administrator/it_works.txt
	date > $outputfile
	echo "It works!" >> $outputfile

Type `Ctrl-D` to exit.

Use `atq` to confirm that your job is queued.

Wait until the scheduled execution time and confirm that the file you expected is created, signifying that the job has run.

Delete the `it_works.txt` file.


### Commands in a file

Instead of supply commands directly on the standard input, we can read them from a file using the `-f` switch.

Put the above commands into a file called `at_test.sh`.

Manually run the `at_test.sh` file - you may have to make it executable and should include the `#!/bin/bash` header at the top. 

Use `at time_goes_here -f at_test.sh` to schedule it for execution in approx 3 minutes time.

Confirm using `atq` that it appears in the queue.
As confirmation that you completed this step, redirect the `atq` output to a file called `queue.txt`. 

Confirm that it creates the `it_works.txt` file at the correct time.


## Job removal

We can remove jobs from the `at` scheduler using the `atrm` command.

Schedule your job from above for execution again.

This time use the `atrm` command to remove it from the queue.


## Submission

1. Change directory to `~/tools_for_sd_labs/lab11` folder.
2. Move the files to this folder:
   - `it_works.txt`
   - `at_test.sh`
   - `queue.txt` 
3. Use `git add` to add the files in this folder to git.
4. Commit using `git commit -m 'message'` replacing 'message' with a suitable short message.
5. Push your commit(s) to GitLab using `git push`.

