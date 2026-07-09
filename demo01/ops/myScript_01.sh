# name of the script is "my_firstScript"
#!/bin/bash
echo -e "\n Today been " `date`" we created our first bash script"

echo -e "\nyour system have been running" `uptime`


the_path=$(pwd)
mv /home/vagrant/dev/devfile6.txt $the_path

echo "job done"
