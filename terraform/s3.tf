resource "aws_s3_bucket" "images" {
  bucket = var.bucket_name

  tags = {
    Name        = "CloudFront Lab Bucket"
    Project     = "AWS CloudFront Lab"
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}