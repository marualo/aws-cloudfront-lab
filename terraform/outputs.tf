output "bucket_name" {
  description = "Name of the created bucket"
  value       = aws_s3_bucket.images.bucket
}