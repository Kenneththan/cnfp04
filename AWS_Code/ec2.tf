# Create an EC2 instance
resource "aws_instance" "my_srv_1" {
  ami           = "ami-0672fd5b9210aa093" # Ubuntu Linux 2 AMI (us-east-1)
  instance_type = "t2.micro"              # Free tier eligible instance type
  subnet_id     = aws_subnet.sg_subnet_1.id
  #security_groups = [aws_security_group.my_sg.name]

  tags = {
    Name = "my_srv_1"
  }
}

# Create an EC2 instance_1
resource "aws_instance" "my_srv_2" {
  ami           = "ami-0672fd5b9210aa093" # Ubuntu Linux 2 AMI (us-east-1)
  instance_type = "t2.micro"              # Free tier eligible instance type
  subnet_id     = aws_subnet.sg_subnet_2.id
  #security_groups = [aws_security_group.my_sg.name]

  tags = {
    Name = "my_srv_2"
  }
}