#https://www.atlassian.com/hu/software/jira/download
#https://confluence.atlassian.com/adminjiraserver/installing-jira-applications-938846823.html
#https://confluence.atlassian.com/adminjiraserver/unattended-installation-938846846.html

#todo Sync JIRA value with ../start.cmd
JIRA=atlassian-jira-software-8.13.1-x64.bin
yum install -y java-1.8.0-openjdk-devel
java -version
cd /tmp
chmod +x $JIRA
sudo ./$JIRA -q -varfile response.varfile


#firewall-cmd --permanent --add-port=8080/tcp
#firewall-cmd --reload