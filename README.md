<p align="center">
  <img src="https://i.imgur.com/OO5dwev.png" alt="Logo" width="200px">
</p>



# Shell Backup Script with rsync

This repository contains a shell script that performs backup using the rsync tool. The script allows you to easily backup a specific directory to a designated backup folder.

## Prerequisites

- Linux-based operating system (e.g., Ubuntu, Debian, Kali Linux)
- rsync installed on your system

## Usage

1. Clone the repository to your local machine:

   ```
   git clone <repository_url>
   ```

2. Navigate to the cloned directory:

   ```
   cd Shell-Backup-Script
   ```

3. Make the script executable:

   ```
   chmod +x backup.sh
   ```

4. Run the script with the following command:

   ```
   ./backup.sh <folder_to_backup> <backup_folder>
   ```

   Replace `<folder_to_backup>` with the full path of the directory you want to backup, and `<backup_folder>` with the name of the previously created backup folder.

   Example:

   ```
   ./backup.sh ~/myfolder backup
   ```

5. The script will simulate the backup process and generate a log file. If everything looks correct, remove the `--dry-run` option from the script to perform the actual backup.

6. After running the script, the backed-up files will be stored in a subfolder inside the backup folder, named with the current date.

