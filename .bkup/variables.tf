
variable "az_rg_count" {
  description = "Number of Azure Resource Groups to create"
  type        = number
  default     = 2 
}




variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "Australia East"  # Change this to your desired Azure region
}

variable "tags" {
  type = map
}

variable "dns_zone_names" {
  type    = list(string)
  #default -- see terraform.tfvars file
}

variable "resource_group_names" {
  type    = list(string)
  # default =  see terraform.tfvars file  
}



