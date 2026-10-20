variable "cidr" {
    type = string
    default = "10.0.0.0/16"
    description = "CIDR block for the VPC"
}
variable "region" {
    type = string
    default = "us-east-1"
    description = "AWS region for the VPC"
}
variable "vpc_name" {
    type = string
    default = "my-vpc"
    description = "Name of the VPC"
}
variable "subnet_name" {
    type = string
    default = "my-subnet"
    description = "Name of the subnet"
}
variable "subnet_cidr" {
    type = string
    default = "10.0.1.0/24"
    description = "CIDR block for the subnet"
}
