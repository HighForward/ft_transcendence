sudo apt-get update


#Check for ruby
ruby --version &>> output.txt
result=$?
if [ $result -eq 0 ]
then
    printf "Ruby is already install\n"
else
    sudo apt-get install -y ruby ruby-dev
    printf "Ruby successfully install\n"
fi

#Check for rails
rails --version &>> output.txt
result=$?
if [ $result -eq 0 ]
then
    printf "Rails is already install\n"
else
    sudo gem install rails
    printf "Rails successfully install\n"
fi

which psql &>> output.txt
result=$?
if [ $result -eq 0 ]
then
    printf "PostgreSQL is already install\n"
#    pg_ctlcluster 12 main start
else
    sudo apt-get install postgresql-client
    sudo apt-get install -y postgresql postgresql-contrib libpq-dev
    printf "Rails successfully install\n"
fi

sleep 1

#sudo apt-get install sqlite3 libsqlite3-dev
#sudo apt-get install nodejs
#curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
#echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
#sudo apt update && sudo apt install yarn
#
#rails new blog --skip-spring --skip-listen
