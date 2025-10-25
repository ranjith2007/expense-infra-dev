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

variable "mysql_sg_tags" {
  default = {
    Component = "mysql"
  }
}

variable "backend_sg_tags" {
  default = {
    Component = "backend"
  }
}

variable "frontend_sg_tags" {
  default = {
    Component = "Frontend"
  }
}

variable "bastion_sg_tags" {
  default = {
    Component = "bastion"
  }
}

variable "ansible_sg_tags" {
  default = {
    Component = "ansible"
  }
}

variable "app_alb_sg_tags" {
  default = {
    Component = "app-alb"
  }
}

variable "web_alb_sg_tags" {
  default = {
    Component = "web-alb"
  }
}

variable "vpc_tags" {
  default = "vpc"
}

