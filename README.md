# Package Update Script

This Bash script automates package updates based on the detected Linux distribution.

## Table of Contents

- [About](#about)
- [Customization](#customization)
- [Prerequisites](#prerequisites)
- [Languages and Utilities Used](#languages-and-utilities-used)
- [Environments Used](#environments-used)
- [Usage](#usage)


## About

The Package Update Script is designed to simplify the process of updating packages on various Linux distributions, including CentOS, Red Hat, Debian, and Ubuntu. It detects the distribution type from the ***'/etc/os-release'*** file and performs the necessary updates using ***'yum'*** or ***'apt-get'*** package managers.

Please note that the script is limited to the following supported distributions:

- CentOS
- Red Hat
- Debian
- Ubuntu

If your distribution is not on this list, the script may not work as expected. You can extend support to additional distributions by modifying the conditional checks in the script.

- The script will detect your Linux distribution and update packages accordingly.
- Successful updates and any errors will be logged in ***'success_log'*** and ***'error_log'*** files, respectively.

## Customization

- **Source and Destination**: You can customize the source and destination directories by modifying the script's variables.

- **Error Handling**: The script checks the exit code of each command and displays an error message if an error occurs. You can further customize error handling based on your needs.

- **Supported Distributions**: Currently, the script supports CentOS, Red Hat, Debian, and Ubuntu. You can extend support to additional distributions by modifying the conditional checks.

- **Logging**: Adjust the paths for ***'error_log'*** and ***'success_log'*** to store log files in your preferred locations.

## Prerequisites

- Bash shell environment.

- Unix-like operating system (Linux, macOS).

## Languages and Utilities Used
- **Bash**
  <br><br>
[<img align="left" alt="Bash Icon" width="50px" src="https://upload.wikimedia.org/wikipedia/commons/4/4b/Bash_Logo_Colored.svg" />][bash]

[bash]: https://www.gnu.org/software/bash/
  <br><br>

## Environments Used

- **Red Hat**
- **Cent OS**
- **Ubuntu**
- **Debian**
  
   <br> 
[<img align="left" alt="Red Hat Icon" width="40px" src="https://upload.wikimedia.org/wikipedia/commons/d/d8/Red_Hat_logo.svg" />][red_hat]
[<img align="left" alt="Red Hat Icon" width="40px" src="https://upload.wikimedia.org/wikipedia/commons/6/63/CentOS_color_logo.svg" />][cent_os]
[<img align="left" alt="Ubuntu Icon" width="40px" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/UbuntuCoF.svg" />][ubuntu]
[<img align="left" alt="Debian Icon" width="40px" src="https://upload.wikimedia.org/wikipedia/commons/4/4a/Debian-OpenLogo.svg" />][debian]

[red_hat]: https://www.redhat.com/
[cent_os]: https://www.centos.org/
[ubuntu]: https://ubuntu.com/
[debian]: https://www.debian.org/
<br><br>

## Usage

To use the installer script, follow these steps:

1. Clone this repository to your local machine.

2. Navigate to the project directory.

3. Run the installer script (***'linux_package_updater.sh'***).

4. Follow the on-screen prompts to configure your application.

5. Complete the installation as guided by the script.
