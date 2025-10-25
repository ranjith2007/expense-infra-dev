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
variable "web_alb_tags" {
  default = {
    Component = "web-alb"
  }
}

variable "zone_name" {
  default = "devops81s.site"
}

variable "zone_r53_id" {
  default = "Z0673714ZP6J86LIKLFQ"
}


