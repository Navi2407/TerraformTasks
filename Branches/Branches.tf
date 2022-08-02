provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "server" {
    count = 1
    ami = "ami-08df646e18b182346"
    instance_type = "t2.micro"
    key_name = "Terra"
    tags = { 
        name = "server ${count.index}"
    }
}

