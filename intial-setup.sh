sudo apt-update -y

sudo apt install openjdk-11-jdk  -y

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \

  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key



echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \

  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \

  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo systemctl daemon-reload
sudo systemctl start jenkins

sudo systemctl start nginx
sudo systemctl enable nginx 
sudo systemctl enable jenkins
sudo systemctl status jenkins

