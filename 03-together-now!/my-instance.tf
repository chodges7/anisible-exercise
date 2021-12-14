provider "aws" {
    region = "us-west-1"
    default_tags {
        tags = {
            Owner   = "Christian",
            Client  = "Internal",
            Project = "Bootcamp"
        }
    }
}

resource "aws_security_group" "christian-bootcamp" {
    name        = "christian-bootcamp"
    description = "Created by Terraform for the bootcamp"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = [var.personal_ip]
    }

    ingress {
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        cidr_blocks = [var.personal_ip]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "christian-bootcamp",
    }
}

resource "aws_instance" "christian-terraform" {
    ami                     = var.aws_instance_ami
    instance_type           = var.aws_instance_type
    key_name                = "christian-keypair"
    vpc_security_group_ids  = [
        aws_security_group.christian-bootcamp.id]
    tags = {
        Name = "christian-terraform-instance",
    }
}
