resource "aws_s3_bucket" "images" {
  bucket = var.bucket_name

  tags = {
    Name        = "CloudFront Lab Bucket"
    Project     = "AWS CloudFront Lab"
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_object" "image" {
  bucket = aws_s3_bucket.images.bucket
  key    = "images/cattos.jpg"
  source = "../images/cattos.jpg"
  etag   = filemd5("../images/cattos.jpg")
}