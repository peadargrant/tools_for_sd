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
5. Choose 8x24, Enter.


## Connecting over SSH

1. Use `ip a` to show IP information.
2. On eth0 interface note the value of inet (look like 10.1.1.20)
3. Open Windows PowerShell and type `administrator@ipaddress`. 
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



sftp

dos2unix

