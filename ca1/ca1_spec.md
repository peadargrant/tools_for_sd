# Tools for SD - CA1 spec

**Draft for in-class discussion - do not start on this project yet**

**Weight:** 40

**Deadline:** as displayed on Moodle

The objective of this lab is to take work you have done in the programming module and set this up properly as a project in professional development environment and deploy to Docker.
This will involve:

- Setup a project in Gitlab
- Add project code
- Setup automated testing in Gitlab, executing in Docker
- Deploy the project in Docker using Gitlab
- Add additional work using principles of Continuous Integration
- You will need to work in pairs for this project.

You will need to work in pairs for this project.
We will facilitate some of the work during class time but significant time outside of the classroom will be necessary.
(You may need to work from the Wired network on campus due to network restrictions - these are outside of my control.)

# Task 0: Group formation

# Task 1: GitLab setup

# Task 2: CI setup

Refer to the lab notes on Continuous Integration in order to setup your project in Gitlab.
One person sets up a new project in gitlab and add the other user to the project
Clone the project to a local folder, add the code and push to server
Setup the Gitlab Runner to execute in Docker (refer to previous lab)
Create a pipeline that performs the unit tests inside a Docker executor
Check that all unit tests are run when a commit is pushed to Gitlab
