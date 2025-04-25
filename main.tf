resource "aws_s3_bucket" "nitu_bucket" {
    bucket = var.bucketname # Replace with a globally unique bucket name
    
    tags = {
        Name        = "MyS3Bucket"
        Environment = "Dev"
    }

}
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.nitu_bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.nitu_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.nitu_bucket.id
  acl    = "public-read"
}
resource "aws_s3_object" "index" {
    key = "index.html"
    bucket = aws_s3_bucket.nitu_bucket.id
    source = "index.html"
    acl          = "public-read"
    content_type = "text/html"
}
resource "aws_s3_object" "error" {
    key = "error.html"
    bucket = aws_s3_bucket.nitu_bucket.id
    source = "error.html"
    acl          = "public-read"
    content_type = "text/html"
}
resource "aws_s3_object" "profile" {
    key = "profile.jpg"
    bucket = aws_s3_bucket.nitu_bucket.id
    source = "profile.jpg"
    acl          = "public-read"    
}
resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.nitu_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
  depends_on = [aws_s3_bucket_acl.example]
}