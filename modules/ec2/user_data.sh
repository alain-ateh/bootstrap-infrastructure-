#!/bin/bash
yum update -y
yum install -y java-11-openjdk docker git

# Install Jenkins
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install -y jenkins

# Start services
systemctl enable jenkins
systemctl start jenkins
systemctl enable docker
systemctl start docker

# Add jenkins user to docker group
usermod -a -G docker jenkins

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

# Install Terraform
yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
yum -y install terraform

# Configure Jenkins initial setup
systemctl restart jenkins

echo "Jenkins installation completed for ${environment} environment"