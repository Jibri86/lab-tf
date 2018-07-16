resource "aws_s3_bucket" "vpc_flow_logs" {
  bucket = "vpc-flow-logs-jcw-${var.environment_shortname}-demo"
  acl    = "private"

  tags {
    #    Name        = "My bucket"
    Environment = "jcw-${var.environment_shortname}"
  }
}
