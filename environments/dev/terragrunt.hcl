remote_state {
  backend = "s3"
  config  = {
    bucket         = "my-tf-test-bucket"
    dynamodb_table = "my-tf-test-bucket-${path_relative_to_include()}"
    key            = "dev/${path_relative_to_include()}.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    profile        = "example-dev"
  }
}

inputs = {
  aws_region         = "eu-west-1"
  aws_profile        = "example-dev"
  environment        = "dev"
}