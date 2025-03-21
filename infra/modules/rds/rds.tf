resource "aws_db_instance" "nestjs_db" {
  allocated_storage    = 20
  engine              = "postgres"
  instance_class      = "db.t3.micro"
  username           = "postgres"
  password           = "password"
  publicly_accessible = true
  vpc_security_group_ids = [aws_security_group.ecs_sg.id]
}
