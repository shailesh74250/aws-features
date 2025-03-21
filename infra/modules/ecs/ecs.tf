resource "aws_ecs_cluster" "nestjs_cluster" {
  name = "nestjs-cluster"
}

resource "aws_ecs_task_definition" "nestjs_task" {
  family                   = "nestjs-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = aws_iam_role.ecs_execution_role.arn
  container_definitions = jsonencode([
    {
      name  = "nestjs-container"
      image = aws_ecr_repository.nestjs_repo.repository_url
      cpu   = 256
      memory = 512
      networkMode = "awsvpc"
      portMappings = [
        {
          containerPort = 3000
          hostPort      = 3000
        }
      ]
      environment = [
        { name = "DB_HOST", value = aws_db_instance.nestjs_db.address },
        { name = "DB_USER", value = "postgres" },
        { name = "DB_PASS", value = "password" }
      ]
    }
  ])
}

resource "aws_ecs_service" "nestjs_service" {
  name            = "nestjs-service"
  cluster         = aws_ecs_cluster.nestjs_cluster.id
  task_definition = aws_ecs_task_definition.nestjs_task.arn
  desired_count   = 2
  launch_type     = "FARGATE"
  network_configuration {
    subnets = aws_subnet.public[*].id
    security_groups = [aws_security_group.ecs_sg.id]
  }
}
