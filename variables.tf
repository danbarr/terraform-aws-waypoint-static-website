variable "waypoint_project" {
  type        = string
  description = "Name of the Waypoint project."
}

variable "region" {
  type        = string
  description = "The region where the resources are created."
}

variable "department" {
  type        = string
  description = "Value for the department tag."
  default     = "WebDev"
}
