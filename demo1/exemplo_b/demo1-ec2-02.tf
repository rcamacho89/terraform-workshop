## EC2

resource "aws_instance" "my_ec2" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"

  tags = {
    "Name" = "gft-workshop01"
  }
}

## EIP

resource "aws_eip" "public_ec2_ip" {
    instance = aws_instance.my_ec2.id
    vpc = true
}