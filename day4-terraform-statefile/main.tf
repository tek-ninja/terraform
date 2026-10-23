resource "aws_vpc" "cartify_vpc" {
  cidr_block = var.cidr
  tags       = {
    Name = var.vpc_name
  }
}
resource "aws_subnet" "cartify_subnet" {
  vpc_id            = aws_vpc.cartify_vpc.id
  cidr_block        = var.subnet_cidr
  tags              = {
    Name = "${var.vpc_name}-subnet"
  }
}
resource "aws_instance" "cartify_instance" {
  ami           = "ami-0e34b50e714a297f1" # Amazon 2023 Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.medium"
  subnet_id     = aws_subnet.cartify_subnet.id
  tags          = {
    Name = "${var.vpc_name}-instance"
  }
}


