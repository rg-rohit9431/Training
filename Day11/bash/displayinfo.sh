system_info() {
    echo "Operating System: $(uname -o)" 
    echo "Kernal version: $(uname -r)" 
    echo "Disk Usage:"
    df -h | grep '^/dev/' 
}

system_info # call the function