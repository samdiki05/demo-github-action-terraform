terraform {
  backend "s3" {
    bucket = "github-action-demo-05"
    key    = "github-action-demo.tfstate"
    region = "us-east-1"
  }
}
