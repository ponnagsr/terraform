provider "aws" {
  region = "us-east-1"
  alias  = "east"
}

provider "aws" {
  region = "us-east-2"
  alias  = "east2"
}
resource "aws_instance" "region1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  provider      = aws.east
  tags_all = {
    Name = "region01"
  }
}

resource "aws_instance" "region02" {
  ami           = var.ami_id02
  provider      = aws.east2
  instance_type = var.instance_type
  tags_all = {
    Name = "region02"
  }
}
