#Backend configuration

terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}
}

provider "aws" {
  region     = "${var.region}"
  access_key = "${var.AWS_ACCESS_KEY}" # env var TF_VAR_AWS_ACCESS_KEY
  secret_key = "${var.AWS_SECRET_KEY}" # env var TF_VAR_AWS_SECRET_KEY
}

# fetch state from s3 bucket
data "terraform_remote_state" "vpc" {
  backend = "s3"

  config {
    #   bucket = "${var.remote_state_bucket}"
    bucket = "state-terraform-s3"

    #   key    = "${var.environment}/iam/terraform.tfstate"
    key = "dev/s3_buckets/terraform.tfstate"

    #   region = "${var.region}"
    region = "us-east-2"
  }
}
