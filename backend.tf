# Comment out the below if you are working on local

terraform {
  backend "s3" {
    bucket = "tfstate-bucket-10"
    key    = "lambda-sns-cloudwatch-luqman.tfstate" #Change the value of this to <your suggested name>.tfstate for  example
    region = "ap-southeast-1"
  }
}