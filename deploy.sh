#!/bin/bash
set -e  # Exit on any error

KEY_PATH=$1    # PEM file path
EC2_USER=$2    # EC2 username
EC2_HOST=$3    # EC2 host IP

echo "Deploying to $EC2_USER@$EC2_HOST ..."

# Upload files (adjust files as needed)
scp -i "$KEY_PATH" -o StrictHostKeyChecking=no index.php config.php "$EC2_USER@$EC2_HOST:/var/www/html/"

# Restart Apache on EC2
ssh -i "$KEY_PATH" -o StrictHostKeyChecking=no "$EC2_USER@$EC2_HOST" "sudo systemctl restart apache2"

echo "✅ Deployment done!"
