resource "aws_vpc" "cartify_vpc" {
  cidr_block = var.cidr
  tags       = {
    Name = var.vpc_name
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.cartify_vpc.id
  tags   = {
    Name = "${var.vpc_name}-igw"
  }
}
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.cartify_vpc.id
  tags   = {
    Name = "${var.vpc_name}-route-table"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}
resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.cartify_vpc.id
  cidr_block = var.subnet_cidr
  tags       = {
    Name = "${var.vpc_name}-subnet"
  }
}
resource "aws_route_table_association" "dev_route_table_association" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.rt.id
}
resource "aws_security_group" "sg" {

  description = "Security group for ${var.vpc_name}"
  vpc_id      = aws_vpc.cartify_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    from_port   = 80
    to_port     = 80 
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.vpc_name}-sg"
  }
}
resource "aws_subnet" "subnet-2" {
  vpc_id     = aws_vpc.cartify_vpc.id
  cidr_block = var.subnet2_cidr
  tags       = {
    Name = "${var.vpc_name}-subnet2"
  }
}
resource "aws_instance" "web" {
  ami                    = "ami-0e34b50e714a297f1" #Amazon 2023 linux
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.subnet-1.id
  vpc_security_group_ids = [aws_security_group.sg.id]
}