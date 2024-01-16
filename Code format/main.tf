provider "aws" {
  region = "us-east-1" # Replace with your desired AWS region
}

variable "bucket_name" {
  default = "my-terraform-static-website" # Replace with a unique and meaningful bucket name
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "index.html"
  acl    = "public-read"

  source = "index.html"
}

resource "aws_s3_bucket_object" "error" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "error.html"
  acl    = "public-read"

  source = "error.html"
}

resource "aws_s3_bucket_object" "profile" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "profile.png"
  acl    = "public-read"

  source = "profile.png"
}

resource "aws_s3_bucket_website" "website" {
  bucket = aws_s3_bucket.my_bucket.id

  routing_rules = <<EOF
  [
    {
      "condition": {
        "httpErrorCodeReturnedEquals": "404",
        "keyPrefixEquals": "error.html"
      },
      "redirectAction": {
        "type": "REWRITE",
        "prefix": "/"
      }
    }
  ]
EOF
}
