terraform {
  backend "s3" {
    bucket         = "myproject-terraform-state"
    key            = "tiny/dev.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks"
  }
}
