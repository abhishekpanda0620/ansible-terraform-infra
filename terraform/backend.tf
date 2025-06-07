terraform {
  backend "s3" {
    bucket         = "infra-terraform-state-07"
    key            = "tiny/dev.tfstate"
    region         = "us-east-1"
    use_lockfile = true
  }
}
