
variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "Australia East" # Change this to your desired Azure region
}

# see terraform.tfvars file
variable "tags" {
  type = map(any)
}

variable "dns_zone_names" {
  type = list(string)
  #default -- see terraform.tfvars file
}

variable "resource_group_names" {
  type = list(string)
  # default =  see terraform.tfvars file  
}

#  see terraform.tfvars file
variable "networkrule" {
}

