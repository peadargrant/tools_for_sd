# CI Intro Lab

## Project setup

For today's class we will use a project repository that includes a pipeline that I've created for you.
Later on we will look at writing your own pipelines.
The sample project is set up on GitLab, and you can use the *fork* feature on GitLab to make your own personal copy of it:

1. Navigate to: https://gitlab.comp.dkit.ie/grantp/ci_intro
2. Click **Fork**.
3. On the next page that appears click **Fork project**.


## Testing the build

Using the simple shell executor requires your machine to have all the required tools present.

1. Change to your home directory using `cd ~`.
2. Clone *your own* fork of the `ci_intro` using the appropriate `git clone` command.
3. Confirm that the following commands exist using the `which` command:
   - `make`
   - `pdflatex`
   - `pandoc`
   Install them if they are not present.

LaTeX usually requires `texlive-latex-base` and `texlive-latex-recommended` packages.
These can be installed using `apt` as normal.


## Runner setup

These steps will set up the runner on your own XOA machine.

1. Navigate to the `ci_intro` topic folder.
2. Review the `./runner_install.sh` script in an editor.
3. Run the `./runner_install.sh` script.
4. You will need to enter your password when prompted.
5. The installation may take some time.


## Linking the runner to the project

1. On GitLab go to your fork of the `ci_intro` project.
2. Click *Settings* and then *CI/CD*. 
3. Find *Runners* on the screen and click *Expand*.
4. Click *New project runner*.
5. Choose *Linux* on the next screen.
6. **Important!** Make sure to turn on *Run untagged jobs*.
7. Click *Create runner*.
8. Under Step 1 on the next screen, copy the command onto your XOA machine with `sudo` infront of it.
You may need to enter your machine password here.
	- If you get a yellow WARNING type Ctrl-C to exit.
	- Re-run the command with `sudo` in front of it as instructed.
9. Press enter to accept the default GitLab URL.
10. Press enter to accept the default runner name.
11. When it asks `Enter an executor` type `shell` and press enter.
12. Finally click *View runners*.
13. You should see a green dot under *Assigned project runners*.


## Manually running the pipeline

We will now manually run the pipeline to confirm all works (it probably won't):

1. In your `ci_intro` project on GitLab go to *Build/Pipelines*.
2. Click *Run pipeline*. 
3. Click *Run pipeline* on the next screen also.
4. If it fails, look at the reason. Usually it's a missing command.
5. On your XOA machine install the missing command(s) and re-try step 4 until it works.

By default a failing pipeline will e-mail you from GitLab.
It will also mail you the first time that a pipeline that previously failed runs successfully.


## Automatically running the pipeline

In your clone of the repository, make a change to the README.md file.

Commit and push the change.

Look at your GitLab under *Build/Jobs* and see that your pipeline has automatically run. 

This will happen regardless of where your repo is pushed from, even from changes made in the interactive GitLab screens. 



## End 

If you have got this far then you have successfully set up your runner and executor and have linked them to your GitLab repository so that your pipeline can run when commits are pushed.

