#!/bin/bash

# Define the necessary variables
private_key_path="path/to/private/key.pem"
ec2_public_ip="EC2_PUBLIC_IP"

# SSH into the EC2 instance and execute the 'cat' command
ssh -i "$private_key_path" ec2-user@"$ec2_public_ip" "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
