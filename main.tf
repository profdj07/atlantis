provider "aws" {
  region = "ap-south-1"
}

resource "aws_ami_copy" "test" {
  name              = "terraform-example"
  description       = "A copy of ami-xxxxxxxx"
  source_ami_id     = "ami-06878d265978313ca"
  source_ami_region = "ap-south-1"

  tags = {
    Name = "HelloWorld"
  }
}

