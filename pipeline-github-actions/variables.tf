variable "location" {
  type        = string
  description = "Region where the azure resources will be created"
  default     = "Brazil South"
}

variable "aws_pub_key" {
  description = "Public key for AWS VM"
  type = string
}

variable "azure_pub_key" {
  description = "Public key for Azure VM"
  type = string
}
