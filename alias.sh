#!/bin/bash
# System Updates & Maintenance
updater() {
  sudo apt update -y 2> /dev/null;
  sudo apt --fix-broken install -y 2> /dev/null;
  sudo apt upgrade -y 2> /dev/null;
  sudo apt dist-upgrade -y 2> /dev/null;
  sudo apt autoremove -y 2> /dev/null;
  sudo apt autoclean -y 2> /dev/null;
  sudo apt clean -y 2> /dev/null;
}
# System Power Management
alias poweroff='systemctl poweroff'  # Shutdown the system
alias restart='systemctl reboot'  # Restart the system
alias hibernate='systemctl hibernate'  #  Hibernate the system
alias sleep='systemctl suspend'  #  Suspend the system

# System Management
alias editbash='${EDITOR:-nano} ~/.bashrc'  #Edit .bashrc
alias reloadbash='source ~/.bashrc'  #Reload .bashrc
alias editzsh='${EDITOR:-nano} ~/.zshrc'  #Edit .zshrc
alias reloadzsh='source ~/.zshrc'  #Reload .zshrc
alias ins='sudo apt install -y'  # Install packages
alias rm='sudo apt remove -y'  # Remove packages
alias search='apt search'  # Search for packages

# System Information
alias neo='neofetch'  # Display system info
alias ff='fastfetch' # Display system info with fastfetch
alias sysinfo='inxi -F'  # Display detailed system information
alias diskusage='df -h'  # Check disk usage
alias meminfo='free -h'  #  Check memory usage
alias cpuinfo='lscpu'  #  View CPU details
alias gpuinfo='lspci | grep VGA'  #  View GPU details
alias kernel='uname -r'  # Display kernel version

# Networking & SSH Utilities
alias myip='curl ifconfig.me'  #  Get public IP address
alias localip='hostname -I'  #  Get local IP address
alias pingtest='ping -c 5 google.com'  # Test internet connectivity
alias speedtest='command -v speedtest-cli >/dev/null 2>&1 && speedtest-cli || echo "speedtest-cli is not installed"'  # Run an internet speed test