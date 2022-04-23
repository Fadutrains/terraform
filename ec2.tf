provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "terraform-demo" {
    ami =  "ami-0f9fc25dd2506cf6d"
    instance_type = "t2.nano"
    key_name = "devkey"
    tags = {
        Name = "Jenkins"
        Env = "dev"    
    }
}

output "public_ip" {
    value = aws_instance.terraform-demo.public_ip
}
output "public_dns" {
    value = aws_instance.terraform-demo.public_dns
}