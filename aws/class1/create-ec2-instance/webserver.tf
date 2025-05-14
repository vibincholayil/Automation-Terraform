resource "aws_instance" "My-Webserver" {

  ami                    = "ami-0fc32db49bc3bfbb1"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.webserver_sg.id}"]
  tags = {
    Name = "My-Webserver"
  }
  key_name  = "my_keypair_2025"
  user_data = <<EOF
#!/bin/bash -xe

# Log user-data output
exec > >(tee /var/log/user-data.log | logger -t user-data -s 2>/dev/console) 2>&1

# Update and upgrade packages
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get upgrade -yq

# Install Apache
apt-get install apache2 -y

# Allow Apache through UFW (optional if UFW is used)
ufw allow in "Apache Full" || true

# Create a simple web page
echo "Hello world" > /var/www/html/index.html

# Ensure Apache is started and enabled
systemctl start apache2
systemctl enable apache2

EOF
}
