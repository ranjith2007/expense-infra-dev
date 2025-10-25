variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "comman_tags" {
  default = {
    Project     = "expense"
    Terraform   = "true"
    Environment = "dev"
  }
}

variable "frontend_tags" {
  default = {
    Component = "frontend"
  }
}

variable "zone_name" {
  default = "devops81s.site"
}