## EC2 

resource "aws_instance" "my_ec2" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"

  tags = {
    "Name" = "workshop-01"
  }

  depends_on = [aws_s3_bucket.demo_bucket]

}

## ELASTIC IP

resource "aws_eip" "public_ec2_ip" {
    vpc = true
    depends_on = [aws_s3_bucket.demo_bucket]
}

resource "aws_eip_association" "eip_assoc" {
    instance_id = aws_instance.my_ec2.id
    allocation_id = aws_eip.public_ec2_ip.id

    depends_on = [aws_s3_bucket.demo_bucket]
}

## S3

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "workshop-bucket-0090809"
  acl    = "private"

  tags = {
    Name        = "workshop-bucket-0090809"
    Environment = "Dev"
  }
}