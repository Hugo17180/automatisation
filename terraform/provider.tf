provider "aws" {
  region                      = "us-east-1"


  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true # Important pour LocalStack

  access_key                  = "test"
  secret_key                  = "test"

  endpoints {
    s3  = "http://localhost:4566"
    ssm = "http://localhost:4566"
    ec2 = "http://localhost:4566"
  }
}