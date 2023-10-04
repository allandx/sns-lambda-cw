variable lambda_function_name {
    description     = "Name of lambda function"
    type            = string
    default         = "luqman-tf-lambda-fn"
}

variable lambda_file_name {
    description     = "Name of lambda file to be zipped"
    type            = string
    default         = "lambda_function"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = "vpc-05001476949b79ab2"
}

variable "sg_id" {
    description = "The security group id"
    type        = string
    default     = "sg-02191c8fa49483ef5"
}

variable "sns_name" {
    description = "The name of the SNS topic"
    type        = string
    default     = "luqman-successful-sns-topic"
}