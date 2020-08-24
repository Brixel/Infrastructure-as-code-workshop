variable "name" {
  type        = string
  description = "The name for this instance"
}

locals {
  location        = "West Europe"
  location_abbrev = "weu"
  name_suffix     = "${var.name}-${local.location_abbrev}"
}
