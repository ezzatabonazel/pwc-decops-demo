#### ECR Endpoint ####
resource "aws_vpc_endpoint" "ecr" {
  vpc_id             = aws_vpc.main.id
  vpc_endpoint_type  = "Interface"
  service_name       = "com.amazonaws.${var.region}.ecr.dkr"
  subnet_ids         = aws_subnet.private.*.id
  security_group_ids = [aws_security_group.ecs_tasks.id, aws_security_group.alb.id]

  tags = {
    Name = "ecr"
  }
}