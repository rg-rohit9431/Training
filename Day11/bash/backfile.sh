source_dir="/d/cloud"
back_up="/d/backup"
timestamp=$(date +"%y-%m-%d_%H-%M-%S")
backup_file="backup_$timestamp.tar.gz"
 
# Ensure the backup directory exists
mkdir -p "$back_up"
 
# Create the backup
tar -czf "$back_up/$backup_file" "$source_dir" .