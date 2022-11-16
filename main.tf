variable "region" {
  type    = string
  default = "us-east-1"

}

provider "aws" {
  profile = "default"
  region  = var.region
}

variable "key-name" {
  type    = string
  default = "shcontrols-kp"
}
