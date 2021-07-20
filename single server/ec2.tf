provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVI4T6KTJ2V6VR3UT"
  secret_key = "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"

}

resource "aws_instance" "myec2" {
  ami           = "ami-0083662ba17882949"
  instance_type = "t2.micro"
  key_name      = "devops"
  tags = {
    Name = "ec2-fabaws"
  }

  root_block_device {
    delete_on_termination = true
  }
}
