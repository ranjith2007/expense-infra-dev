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

variable "mysql_tags" {
  default = {
    Component = "mysql"
  }
}

variable "rds_tags" {
  default = {
    Component = "rds"
  }
}