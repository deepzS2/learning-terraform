variable "ports" {
  description = "Machine ports which will be open by security group"
  type        = list(number)
  default     = [22, 80, 443, 8080]
}
