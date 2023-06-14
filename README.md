# delta-task2-sysad
#####Following steps were followed to creat tar file with inputfiles on source Machine######
#in home directory use :-
sudo tar -cvf /tmp/sysAdtask1inputfiles.tar ./inputfiles
################## For Extracting the file on Target Machine Follow following instructions ####
#Please login  user account with Sudo previledges.
sudo -i ( to Root) 
Assuming the home directory of root is /root 
#Please extract tar file 
tar -xvf /tmp/sysAdtask1inputfiles.tar
#The Tar file has all the input files 
/root/inputfiles has all the inputfiles

#######Following steps were followed to creat tar file with scripts on source Machine######
#in home directory use :-
sudo tar -cvf /tmp/sysAdtask1scripts.tar ./scripts
################## For Extracting the file on Target Machine Follow following instructions ####
#Please login  user account with Sudo previledges.
sudo -i ( to Root) 
Assuming the home directory of root is /root 
Please extract tar file 
tar -xvf /tmp/sysAdtask1scripts.tar
#The Tar file has all the scripts
/root/scripts has all the scripts

