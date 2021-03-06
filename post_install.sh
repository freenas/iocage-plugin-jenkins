#!/bin/sh

# Enable the service
sysrc -f /etc/rc.conf jenkins_enable="YES"

# Start the service
service jenkins start 2>/dev/null

# Echo admin password for initial setup
echo "Initial Admin Password: $(cat /usr/local/jenkins/secrets/initialAdminPassword)"
