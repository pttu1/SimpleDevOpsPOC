resource "aws_security_group" "jenkins-sg" {
  name = "jenkins-sg"
  description = "Security group for Jenkins"
  #ommitting vpc for now
  egress = {
      from_port = 0
      protocol = "-1"
      to_port = 0
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      protocol = "ssh"
      to_port = 22
      cidr_blocks = [var.MY-IP]
  }
  
  ingress {
      from_port = 8080
      protocol = "tcp"
      to_port = 8080
      cidr_blocks = [var.MY-IP]
  }

}

resource "aws_security_group" "sonar-sg" {
  name="sonar-sg"
  description = "Security group for SonarQube"

  egress = {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port = 0
    protocol = "-1"
    to_port = 0
  }
  
  ingress {
      from_port = 9000
      protocol = "tcp"
      to_port = 9000
      cidr_blocks = [var.MY-IP]
  }

}

resource "aws_security_group_rule" "jenkins_allow_sonnar" {
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  security_group_id = aws_security_group.sonar-sg.id
  source_security_group_id = aws_security_group.jenkins-sg.id
}

resource "aws_security_group_rule" "sonar_allow_jenkins" {
  type = "ingress"
  from_port = 9000
  to_port = 9000
  protocol = "tcp"
  security_group_id = aws_security_group.jenkins-sg.id
  source_security_group_id = aws_security_group.sonar-sg.id
}