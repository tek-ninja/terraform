terraform {
  backend "s3" {
    bucket = "the-name-of-the-s3-bucket-is-surya"
    key    = "terraform-statefile/terraform.tfstate"
    region = "us-east-1"
  }
}
