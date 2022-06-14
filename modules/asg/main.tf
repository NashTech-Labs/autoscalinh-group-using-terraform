resource "aws_launch_template" "example" {
  name_prefix   = "example"
  image_id      = data.aws_ami.example.id
  instance_type = "t3.nano"
}

resource "aws_autoscaling_group" "example" {
  capacity_rebalance  = true
  desired_capacity    = 2
  max_size            = 5
  min_size            = 3
  vpc_zone_identifier = [var.public_subnet, var.private_subnet]
  
  launch_template {
    id      = aws_launch_template.example.id
    version = "$Latest"
  }
  
  instance_refresh {
    strategy = "Rolling"
    preferences {
      min_healthy_percentage = 50
    }
    triggers = ["tag"]
  }
}
 
 data "aws_ami" "example" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}

