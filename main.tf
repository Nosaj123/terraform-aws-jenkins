provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "ec2-instance" {
  instance_type          = "t2.micro"
  ami                    = "ami-0715c1897453cabd1"
  key_name               = "key_name" //do not add the '.pem'
  vpc_security_group_ids = [aws_security_group.sg_jenkins.id]
  user_data              = file("user_data.tpl")

  root_block_device {
    volume_size = 8
  }

  tags = {
    Name        = "Default-VM"
    Terraform   = "true"
    Environment = "default"
  }
}

