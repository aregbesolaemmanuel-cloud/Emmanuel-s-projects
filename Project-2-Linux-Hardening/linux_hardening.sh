#!/bin/bash
# Cybersecurity Project: Automated Linux Server Hardening
# Author: Emmanuel
# Purpose: This script automates basic security tasks for a fresh Linux install.

echo "Starting Server Hardening Process..."

# 1. Update and Upgrade System
echo "[+] Updating system packages..."
sudo apt update && sudo apt upgrade -y

# 2. Install and Enable UFW Firewall
echo "[+] Configuring Firewall (UFW)..."
sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw --force enable

# 3. Secure SSH (Disable Root Login)
echo "[+] Securing SSH configuration..."
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart ssh

# 4. Check for 'World Writable' files (Security Risk)
echo "[+] Searching for dangerous world-writable files..."
find / -xdev -type d \( -perm -0002 -a ! -perm -1000 \) -print

echo "Hardening Complete. System is now more secure."
