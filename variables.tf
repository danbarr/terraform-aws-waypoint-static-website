variable "waypoint_application" {
  type        = string
  description = "Name of the Waypoint application."
}

variable "region" {
  type        = string
  description = "The region where the resources are created."
}

variable "domain" {
  type        = string
  description = "Route 53 hosted zone domain name."
}
