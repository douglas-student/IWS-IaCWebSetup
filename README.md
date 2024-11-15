# IWS - IaCWebSetup [:brazil:](LEIAME.md)

## Description (test)
IWS - IaCWebSetup is an automation project to configure a web server using Apache2 and install a website in a simplified way. The Bash script updates the system, installs the necessary packages, and copies the application files to the server, ready to be accessed.

## Technologies Used
- Ubuntu
- Bash
- Apache2
- unzip
- wget

## Installation

1. **Run the script**:  
   Download and execute the Bash script that sets up the server and installs the website.
   ```bash
   chmod +x iac.sh
   ./iac.sh
   ```

2. **Check the server**:  
   After running the script, the Apache2 server will be configured, and the website files will be copied to the correct directory. Check if the site is running by accessing the server's IP address in the browser.

## Script Structure
```bash
#!/bin/bash

echo "Updating the server..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Downloading and copying the application files..."
cd /tmp
wget https://github.com/douglas-student/linux-do-zero-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-do-zero-site-dio-main
cp -R * /var/www/html/
```

## License
This project is licensed under the MIT license. For more details, refer to the [LICENSE](LICENSE) file.
