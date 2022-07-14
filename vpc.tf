resource "aws_vpc" "pilot_vpc" {
  cidr_block       = "10.255.0.0/16"
  instance_tenancy = "default"

  tags = {
    MaintainedBy = "Terraform"
    Name         = "${var.project}-vpc-${var.environment}"
    Description  = "${var.description}"
    Environment  = "${var.environment}"
    CreatedBy    = "${var.createdBy}"
  }
}
