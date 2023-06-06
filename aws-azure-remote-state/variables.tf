variable "location" {
  type        = string
  description = "Region where the azure resources will be created"
  default     = "Brazil South"
}

variable "account_tier" {
  type        = string
  description = "Azure Storage Account tier"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Storage Account data replication type"
  default     = "LRS"
}