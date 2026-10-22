variable "cidr" {
    type = string
    default = ""
    description = "CIDR block for the VPC"
}
variable "subnet_cidr" {
    type = string
    default = ""
    description = "CIDR block for the subnet"
}
variable "subnet2_cidr" {
    type = string
    default = ""
    description = "CIDR block for the subnet"
}
//names
variable "vpc_name" {
    type = string
    default = "cartify"
    description = "Name of the VPC"
}
variable "region" {
    type = string
    default = "us-east-1"
    description = "AWS region for the VPC"
}