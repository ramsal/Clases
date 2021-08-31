## General
- ls - lists files
- -a - display hidden files
- -R - recursively displays files
- -l - displays extra details like size, owner, group, date and permissions
- tree <path> - display files and directories as a tree structure.
- cd <path> - change directory to path
- cd - takes to <user> directory[denoted by ~]
- cd / - takes to root directory[denoted by /]
- cd -- takes to the previous directory you were in)
- pwd - print working directory. 
- dirs - see the contents of the directory stack.
- touch <filename>- creates a new file with any extension we want.
- rm <filename> - removes a file.
- rm -r <directory> - recursively removes all files 
- mkdir <dir_name> - makes a new directory
- rmdir <dir_name> - removes an empty directory
- cp /path/to/file /path/to/copy/to - used to copy file.
 (Use cp -r to copy a directory recursively)
- mv /old/path/to/file /new/path/to/file - used to move file.
- grep [flag] <text to search> <files to search in>
- -i - Performs case insensitive matching
- -l - Outputs the name of the files 
- -L - Outputs which the search text is not present
- --color=auto - Highlights the search text in the output
- cut - cuts out selected portions of each line from file and writes them to the standard output.
- cut -c 2-5 file - cut characters 2 to 5 from each line of file
- cut -d"x" -f 1 file - returns each part of every line before first occurrence of 'x' (-d is delimiter and -f is field)

- clear - scrolls down to an empty screen
- reset - initialises terminal variables to thier default value
- passwd <username> - Change password for a user
- find <query> - finds files and directories with name query in the current directory and its subdirectories
- find -d <query> - looks for a directory with name query
- find -f <query> - looks for a file with name query
- sed 's/cadena1/cadena2/g' fichero > fichero2
- history - shows all typed commands history
- history n -shows last n commands
- exit - exit terminal session

- sudo <command> - Run the command as superuser(a.k.a. root)
- whoami - gives the username of the current user.
- su <username> - Used to switch to a different user. This prompts for the password of the user you switch to.
- sudo -i - Switch to root user. This user has complete access to all files.
- man [section_number] <command> - shows manual 
- apropos <argument> - find the argument in all man pages.

## Downloading
- wget <url_to_download> - Downloads the file url.
- wget -c <url_to_download> - Resumes an incomplete download. 
- wget --tries=100 <url_to_download> - Set the retry download attempts. This is very useful when the download file is large and the internet connection has problems.
- wget -i <download_list_file.txt> - For Multiple downloads. Downloads all the files/URLs mentioned in file.
- wget --recursive --page-requisites --html-extension --convert-links --no-parent <URL> - Use this command to download the entire website so that you can view it offline.
- curl -O <url_to_download> - Downloads the file at the url.


## Installation Commands
### Debian, Ubuntu and other debian-based distros
- apt-get install <package-name> - Installs a package
- Important flags
-y - Replies yes to all confirmations apt-get asks for during install.
- apt-cache search <query> - Searches package names and descriptions for the query string. Used to find the package-names.
- apt-get remove <package-name> - Removes a package (but not the configuration files)
- apt-get autoremove - Remove packages that were automatically installed to satisfy dependencies for some package and that are no more needed.
- apt-get purge <package-name> - Removes a package (along with the configuration files)
- apt-get update - APT keeps a local database on your hard drive with a list of all available packages and where to find them. This command explicitly updates the database.
- apt-get upgrade - Installs newer versions of the packages.

### Fedora, Red Hat and CentOS
- yum install <package-name> - Installs a package

## Changing Permissions
- chmod a+x file - Grants execution permission to all users of a file.
- chmod a+w file - Grants write permission to all users of a file.
- chmod a+r file - Grants read permission to all users of a file.
This are just examples. chmod has a lot of different configurations for different kinds of permissions. For all details see its man page.
- chown -R <username> path/of/file/or/directory - Gives the ownership of the file or all files in the directory and its subdirectories to the mentioned user.

## Networking
- ifconfig - when used without any flags, used to display the status of all active network interfaces.
- iwconfig - similar to ifconfig, but used for wireless network interfaces. 
- hostname - used to display the system's DNS name. 
- hostname -I - used to display all network addresses of the host. 
- ping [domain_name_or_ip_address] - Used to ping a domain name or IP address continuously. It can be stopped by ^C. Generally used to check if the server is up and responding.
- dig example.com - Queries DNS servers for information. Gives back the A record which points the domain name to an IP address. Using the +short flag returns just the IP address linked to the domain name.
- dig -x [IP address] - Queries and returns a PTR record against the IP address queried. The PTR record helps in Reverse DNS Lookup i.e. it provides the domain name linked to an IP address. Example dig -x 127.0.0.1 +short returns localhost..
- arp - It manipulates or displays the kernel's IPv4 network neighbour cache. It can add entries to the table, delete one, or display the current content.
- whois domain_name.com - Generates a long list of output regarding the server registration.
- netstat - The netstat command symbolically displays the contents of various network-related data structures. It helps answer the question “What in blazes is going on on my network?”. 


## Extracting compressed files
- tar -xvzf <file.tar.gz> - used to extract the .tar.gz file
- gzip -d <file_to_decompress>.gz - used to extract the .gz file
- gunzip <file_to_decompress>.gz - used to extract the .gz file
- unzip <file.zip> - used to extract the .zip file

## Process Management
- top - displays processor activity in real time.
- ps returns the snapshot of current processes.
- ps -e returns every process running on the system
- ps -u <useraccount> returns list of processes running on user account.
- ps -u <useraccount> | grep <Application> - fetches all processes of "Application"
- pstree display running processes as a tree
- kill <PID> - kills the process having PID as that entered.
- kill -9 <PID> - performs a violent kill
- killall <processname> - kills all instances of processname


## Services
- sudo service <service_name> [status | start | restart | stop]


## Secure SHell
SSH is some kind of an abbreviation of Secure SHell. It is a protocol that allows secure connections between computers. ssh (SSH client) is a program for logging into a remote machine and for executing commands on a remote machine.
- ssh <server's IP/Domain_name> - connects to a server that supports ssh. Uses the username from your local machine
- ssh <username>@<server's IP/Domain_name> - specify a different username
- ssh -p <port_number> <username>@<server's IP/Domain_name> - specify a port. Default port is 22

## Others
- md5sum – calc hash md5
