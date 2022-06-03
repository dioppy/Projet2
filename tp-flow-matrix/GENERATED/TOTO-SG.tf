resource "aws_security_group" "TOTO-SG" {
        name = "TOTO-SG"
        description = "TOTO-SG"
        vpc_id = "${aws_vpc.AROBINE-vpc.id}"

	
	ingress {
	                description = "Auto Generated Rule"
	                from_port = 80
	                to_port = 80
	                protocol = "tcp"
	                security_groups = ["${aws_security_group.SG-RPROXY.id}"]
	}

	ingress {
	                description = "Auto Generated Rule"
	                from_port = 22
	                to_port = 22
	                protocol = "tcp"
	                security_groups = ["${aws_security_group.SG-ADMIN.id}"]
	}


        egress {
                description = "Allow out Traffic"
                from_port = 0
                to_port = 0
                protocol = "-1"
                cidr_blocks = ["0.0.0.0/0"]
                ipv6_cidr_blocks = []
        }
}
