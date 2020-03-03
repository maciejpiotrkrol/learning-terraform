resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "public-read"

  tags = {
    Name        = "test_maciej_krol_dev)"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "object" {
  bucket = "my-tf-test-bucket"
  key    = "myObject"
  source = "myFolder/myFile"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = "${filemd5("myFolder/myFile")}"
}

resource "local_file" "foo" {
  content     = timestamp()
  filename = "myFolder/myFile"
}