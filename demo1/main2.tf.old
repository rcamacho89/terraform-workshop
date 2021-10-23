## ec2 

resource "aws_instance" "my_ec2" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"

  tags = {
    "Name" = "gft-workshop"
  }

}

resource "aws_eip" "public_ec2_ip" {
    vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my_ec2.id
  allocation_id = aws_eip.public_ec2_ip.id

  depends_on = [aws_eip.public_ec2_ip]

}