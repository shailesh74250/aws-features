resource "aws_lb" "nestjs_alb" {
  name               = "nestjs-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ecs_sg.id]
  subnets           = aws_subnet.public[*].id
}

resource "aws_lb_target_group" "nestjs_tg" {
  name     = "nestjs-target-group"
  port     = 3000
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
}

resource "aws_lb_listener" "nestjs_listener" {
  load_balancer_arn = aws_lb.nestjs_alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.nestjs_tg.arn
  }
}
