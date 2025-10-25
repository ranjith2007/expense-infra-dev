module "web_alb" {
  source = "terraform-aws-modules/alb/aws"

  internal                   = false
  name                       = "${local.resource_name}-web-alb" #expense-dev-app-alb
  vpc_id                     = local.vpc_id
  subnets                    = local.public_subnet_ids
  security_groups            = [data.aws_ssm_parameter.web_alb_sg_id.value]
  create_security_group      = false
  enable_deletion_protection = false
  tags = merge(
    var.comman_tags,
    var.web_alb_tags
  )
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = module.web_alb.arn # arn - amazon resource name
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/html"
      message_body = "<h1>Hello All, I am from Application ALB</h1>"
      status_code  = "200"
    }
  }
}

resource "aws_lb_listener" "https" {
  load_balancer_arn = module.web_alb.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = local.https_certificate_arn

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/html"
      message_body = "<h1>Hello All, I am from Web HTTPS</h1>"
      status_code  = "200"
    }
  }
}

resource "aws_route53_record" "www" {
  zone_id = var.zone_r53_id
  name    = "expense-${var.environment}.${var.zone_name}"
  type    = "A"

  alias {
    name                   = module.web_alb.dns_name
    zone_id                = module.web_alb.zone_id
    evaluate_target_health = true
  }
}

