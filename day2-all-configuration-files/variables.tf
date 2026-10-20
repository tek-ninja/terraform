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
variable "tags" {
    type = map(string)
    default = {
        Name = "my-vpc"
        SubnetName = "my-subnet"
    }
    description = "Tags for the VPC"
}
variable "subnet_cidr" {
    type = string
    default = "10.0.0.1/24"
    description = "CIDR block for the subnet"
}
