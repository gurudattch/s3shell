#!/bin/bash

echo "[*] Installing s3shell..."

# Check AWS CLI
if ! command -v aws &> /dev/null
then
    echo "[!] AWS CLI not found"

    if command -v apt &> /dev/null
    then
        echo "[*] Installing AWS CLI..."
        sudo apt update
        sudo apt install awscli -y

    elif command -v yum &> /dev/null
    then
        sudo yum install awscli -y

    else
        echo "[!] Please install AWS CLI manually"
        exit 1
    fi
fi

echo "[+] AWS CLI ready"

# Optional utilities
if command -v apt &> /dev/null
then
    sudo apt install jq parallel -y
fi

# Make script executable
chmod +x s3shell

# Install globally
echo "[*] Installing binary..."

sudo cp s3shell /usr/local/bin/s3shell
sudo cp s3shell /usr/bin/s3shell
echo "[+] Installed successfully"

echo ""
echo "Run with:"
echo "  s3shell"
echo ""
