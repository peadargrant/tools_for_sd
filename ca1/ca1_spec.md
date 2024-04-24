# Tools for SD - CA1 spec

**Weight:** 40

**Deadline:** as displayed on Moodle

The objective of this lab is to take work you have done in the programming module (Programming for Data Analytics - Project 3) and set this up properly as a project in professional development environment.

The XOA environment is assumed to be the environment that code will be tested on.

This project is to be done individually.
You will have some class time available to work on this CA but a large amount of work is expected to be done in your own time to maximise this.


# Requirements

## Task 1: GitLab setup (10%)

You are required to set up a GitLab repository named exactly `tools_ca`. 
You must give `grantp` developer access to this repository immediately once set up. 

Modify README.md to the format shown in `README_example.md`.

Create a git tag named exactly `setup` when this step is complete.


## Task 2: Code import (10%)

Clone the repository to your local device. 

Add and commit the code `filter_report.py` (and any other Python files) and sample input files `advertising.csv`.

Create a git tag named exactly `import` that points to the initial commit.


## Task 3: Makefile (30%)

To demonstrate your code working on at least 3 input files (`advertising.csv` and at least 2 others) you should add the relevant csv files to the git repository.
(Re-name files to avoid spaces and consider using lower-case only). 

Your Makefile should have `all` as its default target that produces at least 2 outputs generated with different parameters.

Add the generated files from the Makefile (or a pattern that incorporates them) to your `.gitignore` file.
Generated files should not appear in `git status` when this has been correctly done. 


## Task 4: System check script (10%)

Write a Bash script that confirms that all tools required for the exercise exist on the system.

It can either be hard-coded or you could read the output of `make -B all` as a starting point. 

It need not install them but should flag a warning if any tools are missing. 


## Task 5: Runner setup (10%)

Set up a `shell` runner on your XOA instance that is linked as a project runner on your project.

Add the following SSH key to your `.ssh/authorized_keys` file: 

	ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJJVRvvYpYJvO7ptyk/MmiH7pNI4rUIwU057GrNnjsbj dkit-desktop-key

Put the IP address of your XOA instance into a file named `runner.txt` in your repository. 

For marks to be awarded here:

1. the runner must appear with a green dot in *Assigned project runners*.
2. the IP address of your XOA machine must be in `runner.txt`.
3. I must be able to login as `administrator` to your XOA instance with the given key.


## Task 6: Pipeline setup (20%)

Setup a pipeline `.gitlab-ci.yml`.

In your pipeline you must define at least 1 stage that calls 1 job. 

It is *recommended* but not mandatory that your pipeline uses your Makefile from previous steps to do its work. 

You must store the generated output files as artefacts. 


## Task 7: Pipeline demonstration (10%)

Make at least 3 commits that cause your pipeline to execute successfully and artefacts to be generated. 



# Submission

Tag your final commit `submit`. 

Submission will be deemed to happen automatically after the advertised deadline assuming that:

1. you have shared the repository named `tools_ca` to `grantp` with developer access, and
2. have tagged the final commit `submit`. 



# Feedback

Summary numerical feedback will be provided via Moodle.

More detailed feedback is available verbally during consultation session as scheduled by Department following the release of results. 



# Generative AI

Generative artificial intelligence (AI) tools cannot be used in this assessment task.

In this assessment, you must not use generative artificial intelligence (AI) (ChatGPT, ChatSonic, Bing Chat, Lex, DALL-E 2, or other tools) to generate any materials or content in relation to the assessment task.

The [DkIT Academic Integrity Policy and Procedures](https://www.dkit.ie/about-dkit/policies-andguidelines/academic-policies.html) states the following:

"Using generative artificial intelligence tools (e.g. ChatGPT) in an assessment unless explicitly permitted to do so and with proper acknowledgement, is a form of plagiarism".


