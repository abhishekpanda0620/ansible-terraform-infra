terraform {
  backend "s3" {
    bucket         = var.state_bucket
    key            = "tiny/dev.tfstate"
    region         = "us-east-1"
    use_lockfile = true
  }
}
