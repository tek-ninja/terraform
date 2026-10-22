variable "cidr" {
    type = string
    default = ""
    description = "CIDR block for the VPC"
}
variable "subnet_cidr" {
    type = string
}
variable "vpc_name" {
    type = string
    default = "cartify"
}

variable "region" {
    type = string
    default = "us-east-1"
    description = "AWS region for the VPC"
}