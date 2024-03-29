# Linux lab

**Because of institute's network configuration, these instructions will work ONLY from LAB COMPUTERS!**

## Machine setup

1. Login to https://xoa.comp.dkit.ie/
2. Go to Home tab on left
3. Hit new VM on top right
4. Choose primary pool
5. Choose Ubuntu server quick instance
6. Name: D00000000_tsd_server
7. Description: Tools for SD server
8. Go down to disks.  Name: D00000000_tsd_server (same as above)
9. Hit create
10. Go to console tab
11. Wait for login screen. 
12. Login as: `administrator`
13. Should see administrator@ubuntu prompt.

## Set a different password

1. Run `passwd` command.
2. Enter current password (won't echo to screen).
3. Enter new password twice (won't echo)

## Console resolution

1. Run `sudo dpkg-reconfigure console-setup`
2. Enter (leave at UTF-8).
3. Enter again (leave at Guess Optimal).
4. Choose Terminus Bold with arrow keys, Enter.
5. Choose 12x24, Enter.


## Connecting over SSH

1. Use `ip a` to show IP information.
2. On eth0 interface note the value of inet (look like 10.1.1.20)
3. Open Windows PowerShell and type `ssh administrator@ipaddress`. 
4. Log in as `administrator` and password as set. 
5. Note that this session (and any others) is distinct from the console session. 


## Software update

1. Update the software package directory `sudo apt update`. 
2. Upgrade all eligible packages `sudo apt upgrade`. 
3. You may see a Pending kernel upgrade screen, just hit OK on that. 
4. You may see a services to be re-started screen. Hit Tab to highlight OK button and then press enter.
5. When the upgrade command has finished type `sudo reboot` to restart the virtual machine. Your SSH session will disconnect and the process will take a few minutes. 
6. When the machine has rebooted, reconnect your SSH session. 


## Full-screen editor.

1. Install emacs using `sudo apt install emacs-nox`. (nox means no X, no graphics)
2. Create a new file `test.txt` using `emacs test.txt`. 
3. Emacs will open full-screen and you can navigate using arrow keys:
	- F10 will show menus, use arrows and enter to navigate.
	- A lot of commands use multiple key sequences as shortcuts.
4. Type some text into the file.
5. Save the file using Ctrl-X Ctrl-S.
6. Exit emacs using Ctrl-X Ctrl-C. 


## Transferring files

We can use sftp to transfer files between our local and remote machines.
SFTP uses the same underlying mechanisms as SSH.

1. Open a new PowerShell window.
2. Type `sftp administrator@ipaddress` and press enter.
3. Enter your password.
4. You'll now be connected over sftp.

When working over SFTP you are dealing with **2** directories:

- The local working directory on your local PC.
- The remote working directory on the remote machine.

Useful commands:

- `pwd` to show the *remote* working directory path
- `lpwd` to show the *local* working directory path
- `ls` to list the *remote* directory
- `lls` to list the *local* directory
- `cd` to change *remote* directory
- `lcd` to change *local* directory
- `rename` to rename a file on the *remote* machine
- `mkdir` to make a folder on the *remote* machine
- `lmkdir` to make a folder on the *local* machine
- `rm` to delete a file on the *remote* machine
- `get` to copy a file from the remote machine to your local machine
- `put` to copy a file from the local machine to the remote machine


## Simple python file

1. Use the emacs editor to make a Python program that asks your name and prints hello, yourname. 
2. Save that file as greeter.py .
3. Run using `python3 greeter.py` .


## Python file that can run directly

0. Open `greeter.py` using emacs. 
1. Add `#!/usr/bin/env python3` to the top of `greeter.py`.
2. Save and exit.
3. Run `chmod +x greeter.py` to switch on the execute bit (flag) on the file.
4. Run your program as `./greeter.py`.


# Running own python file

1. Find a non-trivial Python program you wrote in another module.
2. Use SFTP (put) to transfer the file from your PC to your linux server.
	- May need to re-start SFTP connection if it was idle too long!
3. Try to run the file with `python3 filename.py`. 


# Git repository

1. Clone your GitLab `tools_for_sd_labs` repository to the server using:
	- `git clone https://url/from/git/lab` 
2. cd into `tools_for_sd_labs`.
3. create lab05 folder using `mkdir lab05`.
4. cd into `lab05`.
5. Move `test.txt` to `lab05` folder:
	- `mv ../../test.txt .` 
6. Same for `greeter.py`.
7. Same for file you uploaded. 
8. Add, commit and push those files to git.





dos2unix

