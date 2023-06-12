#!/bin/bash

# Check if we are root privilage or not
if [[ $UID -ne 0 ]]
then
        echo "Please run this script with superuser privileges."
        exit 1
fi
# Define the backup directory
BACKUP_DIR="/mnt/backup"
# Define the directories to be backed up
DIRECTORIES=("/home/ec2-user/data")
# Get the hostname of the instance
HOSTNAME=$(hostname -s)
# Get the current date and time
DATE=$(date +%F-%H-%M)
# Print start status message.
echo "We will back up ${DIRECTORIES[@]} to under ${BACKUP_DIR}"
# Create the backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir "$BACKUP_DIR"
fi
# Iterate through the directories to be backed up
for DIR in "${DIRECTORIES[@]}"
do
    # Create the filename for the backup
    FILENAME="$BACKUP_DIR/$HOSTNAME-$DATE-$(basename $DIR).tgz"
    tar -zcvf "$FILENAME" "$DIR"
done
# Or if you have only one directory that you know.

# Run "sed -i -e 's/\r$//' scriptname.sh" command before running script.

# Print end status message.
echo "Back up is ready."



  106  touch /home/ec2-user/data/file{1..10}
  107  ls /home/ec2-user/data
  112  tar -tzvf /mnt/bacpup/ip-172-31-87-66-2023-06-12-19-43-data.tgz
  113  tar -tzvf /mnt/backup/ip-172-31-87-66-2023-06-12-19-43-data.tgz
  
sudo yum install cronie -y
sudo systemctl enable crond.service
sudo systemctl start crond.service
sudo systemctl status crond.service
crontab -e
   */1 * * * * sudo /home/ec2-user/Project/Third_Part/backup.sh
crontab -l
ls /mnt/backup