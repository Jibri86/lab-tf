# can be exported as env var: TF_VAR_AWS_ACCESS_KEY
variable "AWS_ACCESS_KEY" {}

# can be exported as env var: TF_VAR_AWS_SECRET_KEY
variable "AWS_SECRET_KEY" {}

variable "environment" {
  default = "dev"
}

variable "environment_shortname" {
  default = "dev"
}

variable "region" {
  default = "us-east-2"
}

variable "remote_state_bucket" {
  default = "state-terraform-s3"
}
