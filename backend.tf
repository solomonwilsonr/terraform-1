terraform {
  backend "s3" {
    bucket         = "my-terraform-bucket-123456"    # your bucket name
    key            = "dev/terraform.tfstate"       # path inside the bucket
    region         = "us-east-1"                   # region of the bucket
    dynamodb_table = "terraform-lock"              # optional: for locking
    encrypt        = true
  }
}
