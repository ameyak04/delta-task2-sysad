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

Similarly store Dockerfile-webapp, Dockerfile-db and docker-compose.yaml into /root directory

######Setting up local host######
sudo nano /etc/hosts
append "<your_server_IP_address> gamma-z.hm" to the file manually


#####running server docker in the system##########
cp Dockerfile-webapp Dockerfile
docker pull ghcr.io/ameyak04/task2server-ghcr:latest
docker run -d -t --name task2server ghcr.io/ameyak04/task2server-ghcr:latest
##########to go into the root of docker##########
docker exec -it task2server bash


#####running database docker in the system##########
cp Dockerfile-db Dockerfile
docker pull ghcr.io/ameyak04/postgresdb-ghcr:latest
docker run -d -t --name postgresdb ghcr.io/ameyak04/postgresdb-ghcr:latest
##########to go into the root of docker##########
docker exec -it postgresdb bash

#######to run docker-compose file#######
docker compose -f docker-compose.yaml up -d ---> Very Important

