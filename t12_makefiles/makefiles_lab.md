# Makefiles lab


## Notes

[Guide to Makefiles](https://swcarpentry.github.io/make-novice/index.html)

[Lecture notes on Make (Warwick University)](https://warwick.ac.uk/research/rtp/sc/rse/training/make/Makefiles.pdf)

## Sample rule

	help.docx: help.md
        pandoc -o $@ $^


## Automatic variables

	$@ = name of the target file 
	$^ = all of the dependency files
	$< = the **first** dependency listed



## Setup

On your XOA virtual machine:

1. Login over SSH.
2. cd into `tools_for_sd` and use `git pull --rebase` to update it.
3. cd into `tools_for_sd_labs` and use `git pull --rebase` to update it also.
4. Make a `lab12` folder and change into it.
5. Change back in to your home directory.
6. Confirm using `pwd` that you are in `/home/administrator`.


## Installation

1. Use `which make` to check if the `make` command is installed.
2. If required install it using `sudo apt -y install make`.
3. Confirm that the `make` command exists by running `make -h` to display the help text.


## Makefile exercise 1: basic Makefile

Imagine a scenario where we are going to submit Python code and some supporting documentation for CA.
We have a program `my_program.py` and a description of its usage `help.md` in Markdown.
Our lecturer has asked us to submit also a copy of its output when run in the file `output.txt`.
The files are required in a zip named `ca1.zip`. 

1. Draw out a diagram on paper of the *dependencies* in the above scenario.  Make a sample `my_program.py` that just prints something to the screen.  Also make a sample `help.md` file that has some Markdown text in it. 
2. Ensure that the `make`, `pandoc` and `pygmentize` commands are installed. 
3. Create a new `Makefile` using `emacs`.
4. Create a new target for `ca1.zip` with `my_program.py` and `help.md` as *dependencies*.
5. Test your Makefile using `make`.
6. Does repeatedly running `make` do the ZIP operation again or skip it?
7. Modify one of the two dependency files. Does `make` now regenerate the ZIP file.
8. Add in a target for `output.txt` using shell redireciton based on the `my_program.py` file.
9. Test your Makefile using `make`. Do you now see `output.txt`?
12. Use a `.SECONDARY:` line to prevent `make` removing the *transitive dependency* `output.txt`. 
11. The lecturer has now asked us to convert the `help.md` file to DOCX and submit that as well. Make the appropriate changes to your `Makefile`.
12. Test using `make -B` what happens if a re-build is forced. Does the order of the commands look correct?
13. What happens if you instead use `make -Bn`?  Look up the online help to see what the `-n` option does if you're not sure.

## Submission

1. Change directory to `~/tools_for_sd_labs/lab12` folder.
2. Move the files to this folder:
   - `my_program.py`
   - `help.md`
   - `Makefile`
3. Use `git add` to add the files in this folder to git.
4. Commit using `git commit -m 'message'` replacing 'message' with a suitable short message.
5. Push your commit(s) to GitLab using `git push`.


