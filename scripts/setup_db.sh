#sudo apt-get install postgresql-client   maybe??

#first start service
sudo service postgresql start

#to get into postgresql
sudo -u postgres psql

#\du for users listening
#\list for db listening

#create user
CREATE USER new_username;

#give to user SuperUser and able to create db
ALTER USER new_username SUPERUSER CREATEDB;






