#!/bin/sh


sudo apt-get install vsftpd
sudo nano /etc/vsftpd.conf              #Change anon_users to YES.
sudo vsftpd                           #Starts server.


##Go to Web Browser.

ftp://localhost

##To open localhost from remote server.

ssh cs17d28@192.168.0.30
ftp -p 192.168.0.189               ##Opens Ip address of localhost in passive mode

ftp>ls

