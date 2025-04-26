
# select the aws t3.micro instances after set up the ec2 instances.

# Install the nodejs
1. sudo yum install -y nodejs

# To check the version the of the nodes after install.

  node -v or node -version

# Install Git 
 
 sudo yum install -y Git

 # Install PM2 [production process manager] (for Managing the node.js app)

 
 2. sudo npm install pm2-g

 ==> clone the nodejs web from github

 git clone https://github.com/Dinesh9-g/NodeJS-web-with-PM2-on-AWS-EC2-instance.git

  1. cd -- change the directory to repo

 2. cd  NodeJS-web-with-PM2-on-AWS-EC2-instance


# For install Dependencies

   npm install

# Start the node js application using PM2

> start the web with PM2 --- pm2 start server.js

> if we want to restart the web automatically on server reboot -- pm2 startup

> save the  pm2 process list -- pm2 save

# Configure security groups

1. Go to EC2 Dashboard > Security Groups.

2. Select the security group associated with your EC2 instance.

3. Click on Inbound rules > Edit inbound rules.

4. Add a new rule allowing HTTP (port 80) or Custom TCP Rule (port 3000).


# To Access the application.

http://<your-ec2-public-ip>:3000


# To check the web status

1. pm2 status

# Check the Application logs

1. pm2 logs server

-----------------------------------------------------------------

# Install docker on ec2

sudo yum update -your

sudo yum install docker -y

sudo service docker start

sudo usermod -aG docker ec2-usermod

# To build the image 

git clone   https://github.com/Dinesh9-g/NodeJS-web-with-PM2-on-AWS-EC2-instance.git

cd NodeJS-web-with-PM2-on-AWS-EC2-instance

docker build -t node-web .

docker run -d -p 3000:3000 node-web



