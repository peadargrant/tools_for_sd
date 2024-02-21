# SSH keys lab

Because of DkIT's lab configuration you can only connect over SSH to XOA from the *wired* LAB computers.

## Key creation

1. Open PowerShell on your *local* computer.
2. Run `ssh-keygen -t ed25519`.
3. Hit enter twice to accept the default location(s).
4. Choose a memorable passphrase.
5. Navigate to the `.ssh` folder.
6. Confirm by listing out its contents that you have an `id_ed25519` private key and `id_ed25519.pub` public key.

## Public key transfer

1. Log into your XOA instance using SSH.
2. Navigate to the `~/.ssh` folder of your home directory.
   (If it doesn't exist use `mkdir -p ~/.ssh` to create it.)
3. Use `emacs authorized_keys` to create the `authorized_keys` file.
4. Copy and paste your **public** key from your local PC to the authorized_keys file.
5. Save and exit.
6. Use `chmod 0600 authorized_keys` to make it only accessible by your username.
   (If you omit this step then SSH won't read your file.)

## Connecting using your key

1. Connect over SSH and check if your key is detected.
2. Enter your passphrase when requested.
3. You'll be connected as before.

## Using SSH agent

1. Type `ssh-add` and press enter.
2. Enter your key's passphrase.
3. Your key is then added to the ssh agent.

## Connecting using key stored in agent.

1. Try connecting as before.
2. If the key is successfully added to the SSH agent then you'll get no passphrase or password prompts.
3. Try an SFTP transfer and confirm your SSH-agent stored key works here too. 

## Lab submission

On your *local* PC in PowerShell:

1. Change into your `tools_for_sd_labs` folder.
2. Update your lab code using `git pull`.
3. Make a new folder `lab06`.
4. Change into `lab06`.
5. Copy the directory listing of `.ssh` to your `lab06` folder, by *piping* the `ls` command to a file `key_listing.txt`.
6. Commit the change with the message `local files`.
7. Push your changes using `git push`.

On the *remote* virtual machine via SSH:

1. Change into your `tools_for_sd_labs` folder (save as above).
2. Update your lab code using `git pull` (same as above).
3. Change into `lab06`.
4. Copy the directory listing of `.ssh` to your `lab06` folder, by *piping* the `ls` command to a file `remote_listing.txt`.
5. Commit the change with the message `remote files`.
6. Push your changes using `git push`.

Your lab is complete.
