resource "aws_instance" "jenkins-server" {
  ami = lookup(var.AMI, var.AWS_REGION)
  instance_type = "t2.small"
  key_name = aws_key_pair.devopskey.key_name
  count = var.instance_count
  security_groups = [aws_security_group.jenkins-sg.name]

  tags = {
    Name = "jenkins-server"
    PROJECT = "devops-poc"
  }

  user_data = "${file("user-data/jenkins.sh")}"
}