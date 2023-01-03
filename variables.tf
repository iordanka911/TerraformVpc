variable "region" {
  #default region to deploy infrastructure
  type    = string
  default = "eu-central-1"
}

variable "cidr" {
    default="10.0.0.0/16"
}

variable "privateSubnets" {
    type   = list(string)
    default= ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "publicSubnets" {
    type    = list(string)
    default =["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "availabilityZones" {
    type    = list(string)
    default  =["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}
