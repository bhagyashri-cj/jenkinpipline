provider "aws" {

            region = "ap-south-1"

              }



resource "aws_instance" "public-web-ec2" {

      ami = "ami-0851b76e8b1bce90b"

      instance_type = "t2.micro"

      availability_zone = "ap-south-1a"

      key_name = "docker-key"

      subnet_id = "subnet-058f5693f1a88c1ba"

      vpc_security_group_ids = ["sg-0001c5a29b3915025"]

      associate_public_ip_address = true



}
