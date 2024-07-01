
resource "aws_s3_bucket" "create_s3_bucket" {
  bucket = var.bucket_name

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "archive"
    enabled = true

    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }
  }

  website {
    index_document = "index.html"
  }

  tags = {
    Environment = "QA"
  }
}

resource "s3_bucket_object" "my_object" {
  bucket       = var.bucket_name
  key          = "index.html"
  content      = <<EOF
  tejal here from b24 batch 
  EOF

  //acl          = "public-read"
  content_type = "text/html"
}

output "website_endpoint" {
  value = aws_s3_bucket.create_s3_bucket.website_endpoint
}

resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket = aws_s3_bucket.create_s3_bucket.bucket

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false 
  restrict_public_buckets = false
}
