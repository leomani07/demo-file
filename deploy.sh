#!/bin/bash

EC2_USER=ec2-user
EC2_HOST=your-ec2-public-ip
KEY_PATH=~/.ssh/your-key.pem

# Copy files to EC2
scp -i $KEY_PATH index.php config.php $EC2_USER@$EC2_HOST:/var/www/html/

# Optional: Restart Apache (if needed)
ssh -i $KEY_PATH $EC2_USER@$EC2_HOST "sudo systemctl restart httpd"
