# main terragrunt config for components of this project

terragrunt = {
  remote_state {
    backend = "s3"

    config {
      bucket         = "state-terraform-s3"
      key            = "${path_relative_to_include()}/iam/terraform.tfstate"
      region         = "us-east-2"
      encrypt        = false
      dynamodb_table = "terraform-develop-lock-table"
    }
  }
}
