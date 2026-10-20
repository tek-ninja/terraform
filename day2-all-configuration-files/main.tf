resource "aws_vpc" "dev" {
  cidr_block = var.cidr
  tags       = var.tags
}
resource "aws_subnet" "dev" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = var.subnet_cidr
}