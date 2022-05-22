variable AWS_REGION {
    default =  "us-east-2"
}

variable AMI {
    type = map
    default = {
        us-east-2 = "ami-03a0c45ebc70f98ea"
    }
}

variable PRIVATE_KEY_PATH {
    default = "keys/devopskey"
}

variable PUBLIC_KEY_PATH {
    default = "keys/devopskey.pub"
}

variable MY-IP {
  default = "104.158.234.69/32"
}