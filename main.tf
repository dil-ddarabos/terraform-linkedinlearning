 resource "aws_instance" "ec2-instance1" {
   ami = "ami-0fa3fe0fa7920f68e"
   instance_type = "t2.micro"

   tags = {                                
     Name = "demo-server1"
}
}


resource "aws_instance" "ec2-Instance2" {
  provider      = aws.euc
  ami           = "ami-0a6793a25df710b06"  # AMI for eu-central-1
  instance_type = "t2.micro"

  tags = {                                
    Name = "demo-server2"
}
}