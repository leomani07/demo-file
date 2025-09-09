#!/bin/bash
s
set -e  # Exit on error

EC2_USER=ubuntu                    # Use ec2-user (Amazon Linux) or ubuntu (Ubuntu)
EC2_HOST=your-ec2-public-ip        # Replace with your EC2 public IP
KEY_PATH=$1                        # Passed in from Jenkins

echo " Deploying to $EC2_HOST..."

# Upload files
scp -i $KEY_PATH -o StrictHostKeyChecking=no index.php config.php $EC2_USER@$EC2_HOST:/var/www/html/

# Restart Apache
ssh -i $KEY_PATH -o StrictHostKeyChecking=no $EC2_USER@$EC2_HOST "sudo systemctl restart apache2"

echo "✅ Deployment done!"
