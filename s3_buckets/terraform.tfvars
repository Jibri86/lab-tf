aws_region = "us-east-2"

aws_profile = "TF-LAB"

AWS_ACCESS_KEY = "AKIAJYM32A7NKXUJZOUA"

AWS_SECRET_KEY = "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"

remote_state_bucket = "state-terraform-s3"

region = "us-east-2"

terragrunt = {
  remote_state {
    backend = "s3"

    config {
      bucket         = "state-terraform-s3"
      key            = "dev/s3_buckets/terraform.tfstate"
      region         = "us-east-2"
      encrypt        = true
      dynamodb_table = "terraform-develop-lock-table"
    }
  }
}
