variable "name" {
  type        = string
  description = "The name for module instance"
}

variable "rg_name" {
  type        = string
  description = "Resource group name where this instance should be deployed "
}

variable "location" {
  type        = string
  description = "The location for this resource to be deployed"
}
