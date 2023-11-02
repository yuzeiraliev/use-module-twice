
data "aws_ami" "test" {
  most_recent = true

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]  # AWS Account ID for Canonical
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.test.id
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}


