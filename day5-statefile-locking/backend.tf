terraform {
  backend "s3" {
    bucket = "the-name-of-the-s3-bucket-is-surya-day05"
    key    = "terraform-statefile/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
    dynamodb_table = "the-name-of-the-dynamodb-table-is-surya-day05" #Select LockID
    
  }
}
