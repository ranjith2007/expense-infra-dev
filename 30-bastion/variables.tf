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

variable "bastion_tags" {
  default = {
    Component = "bastion"
  }
}

variable "mysql_tags" {
  default = {
    Component = "mysql"
  }
}