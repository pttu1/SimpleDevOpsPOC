variable "AWS_REGION" {
  default = "us-east-2"
}

variable "AMI" {
  type = map(any)
  default = {
    us-east-2 = "ami-081c75eaeac28ac34"
  }
}

variable "PRIVATE_KEY_PATH" {
  default = "keys/devopskey"
}

variable "PUBLIC_KEY_PATH" {
  default = "keys/devopskey.pub"
}

variable "MY-IP" {
  default = "104.158.234.69/32"
}

variable "instance_count" {
  default = 1
}