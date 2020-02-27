

provider "aws" {
  access_key = "*****************"
  secret_key = "***************"
   region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-first-bucketven1"

}
