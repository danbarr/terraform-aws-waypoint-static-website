variable "waypoint_project" {
  type        = string
  description = "Name of the Waypoint project."
}

variable "region" {
  type        = string
  description = "The region where the resources are created."
}

variable "domain" {
  type        = string
  description = "Route 53 hosted zone domain name."
}
