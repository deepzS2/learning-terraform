variable "cidr_vpc" {
  description = "VPC CIDR block"
  type        = string
}

variable "cidr_subnet" {
  description = "Subnet CIDR block"
  type        = string
}

variable "environment" {
  description = "Resource environment where it will be used"
  type        = string
}
