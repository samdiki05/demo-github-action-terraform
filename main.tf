data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "test" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
    //instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_ec2_instance_state" "test" {
  instance_id = aws_instance.test.id
  state       = "running"
  //state       = "stopped"
}