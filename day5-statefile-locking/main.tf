resource "aws_vpc" "cartify_vpc_day5" {
  cidr_block = "10.0.0.0/16"
  tags       = {
    Name = "cartify-vpc-day5"
  }
}
resource "aws_subnet" "cartify_subnet_day5" {
  vpc_id            = aws_vpc.cartify_vpc_day5.id
  cidr_block        = "10.0.0.0/24"
  tags              = {
    Name = "cartify-subnet-day5"
  }
}