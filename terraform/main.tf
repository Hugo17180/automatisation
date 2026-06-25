# main.tf
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
}

resource "aws_ssm_parameter" "db_url" {
  name  = "/dev/database/url"
  type  = "String"
  value = var.db_url
}

resource "aws_instance" "app_server" {
  ami           = "ami-12345678"
  instance_type = var.instance_type

  tags = {
    Name = "AppServer-${var.environment}"
  }
}
output "bucket_arn" {
  value = aws_s3_bucket.my_bucket.arn
}