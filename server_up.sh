#!bash

#eda lic
cd /eda/synopsys/lic
sh start.sh
cd -

#system restart will auto enable below,  if manually, pls remove the first #.
##gitlab:firefox open http://219.223.196.18/
#gitlab-ctl start
##gitlab-ctl status
#
##jenkins:firefox open http://219.223.196.18:8899
#sudo service jenkins start
#
##vnc
#sudo systemctl daemon-reload   
#sudo systemctl enable vncserver@:1.service    
#sudo systemctl start  vncserver@:1.service
#sudo systemctl enable vncserver@:2.service    
#sudo systemctl start  vncserver@:2.service
#sudo systemctl enable vncserver@:3.service    
#sudo systemctl start  vncserver@:3.service
#sudo systemctl enable vncserver@:4.service    
#sudo systemctl start  vncserver@:4.service
vncconfig -nowin&


