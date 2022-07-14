#Public Subnets
#**********************
resource "aws_subnet" "QA-Subnet-Public1" {
  vpc_id            = aws_vpc.pilot_vpc.id
  cidr_block        = "${var.ip_prefix}.${var.public_subnet_ip1}"
  availability_zone = "${var.region}a"
  tags = {
    MaintainedBy = "Terraform"
    Name         = "${var.project}-subnet-public1-${var.environment}"
    Environment  = "${var.environment}"
    CreatedBy    = "${var.createdBy}"
    Description  = "${var.description}"
  }
}

resource "aws_subnet" "QA-Subnet-Public2" {
  vpc_id            = aws_vpc.pilot_vpc.id
  cidr_block        = "${var.ip_prefix}.${var.public_subnet_ip2}"
  availability_zone = "${var.region}b"
  tags = {
    MaintainedBy = "Terraform"
    Name         = "${var.project}-subnet-public2-${var.environment}"
    Environment  = "${var.environment}"
    CreatedBy    = "${var.createdBy}"
    Description  = "${var.description}"
  }
}


# Private Subnets - App
#**********************
resource "aws_subnet" "App1-QA-Subnet" {
  vpc_id            = aws_vpc.pilot_vpc.id
  cidr_block        = "${var.ip_prefix}.${var.private_subnet_app1}"
  availability_zone = "${var.region}a"
  tags = {
    Name         = "${var.project}-subnet-app1-${var.environment}"
    MaintainedBy = "Terraform"
    Environment  = "${var.environment}"
    CreatedBy    = "${var.createdBy}"
  }
}


#P rivate Subnets - Data
#***********************
resource "aws_subnet" "Data1-QA-Subnet" {
  vpc_id            = aws_vpc.pilot_vpc.id
  cidr_block        = "${var.ip_prefix}.${var.private_subnet_db1}"
  availability_zone = "${var.region}a"
  tags = {
    MaintainedBy = "Terraform"
    Name         = "${var.project}-subnet-data1-${var.environment}"
    Environment  = "${var.environment}"
    CreatedBy    = "${var.createdBy}"
  }
}


# resource "aws_ram_resource_share" "qa-ram" {
#   name                      = "ram-${var.Ambiente}-${var.codigo-proyecto}"
#   allow_external_principals = false
#   tags = {
#     Name            = "${var.codigo-proyecto}-subnet-data3-${var.Ambiente}"
#     MaintainedBy    = "Terraform"
#     codigo-proyecto = "${var.codigo-proyecto}"
#     Ambiente        = "${var.Ambiente}"
#     ApprovedBy      = "${var.approvedBy}"
#     CreatedBy       = "${var.createdBy}"
#   }
# }

# # resource "aws_ram_principal_association" "qa-ram-associate" {
# #   principal          = var.dest_account
# #   resource_share_arn = aws_ram_resource_share.qa-ram.arn
# # }

# # resource "aws_ram_resource_association" "ram-public-1-subnet" {
# #   resource_arn       = aws_subnet.Subnet-QA-Public1.arn
# #   resource_share_arn = aws_ram_resource_share.qa-ram.arn
# # }

# # resource "aws_ram_resource_association" "ram-public-2-subnet" {
# #   resource_arn       = aws_subnet.Subnet-QA-Public2.arn
# #   resource_share_arn = aws_ram_resource_share.qa-ram.arn
# # }

# # resource "aws_ram_resource_association" "ram-public-3-subnet" {
# #   resource_arn       = aws_subnet.Subnet-QA-Public3.arn
# #   resource_share_arn = aws_ram_resource_share.qa-ram.arn
# # }

# # resource "aws_ram_resource_association" "ram-app-subnet" {
# #   resource_arn       = aws_subnet.Subnet-QA-App1.arn
# #   resource_share_arn = aws_ram_resource_share.qa-ram.arn
# # }

# # resource "aws_ram_resource_association" "ram-app2-subnet" {
# #   resource_arn       = aws_subnet.Subnet-QA-App2.arn
# #   resource_share_arn = aws_ram_resource_share.qa-ram.arn
# # }

# # resource "aws_ram_resource_association" "ram-app3-subnet" {
# #   resource_arn       = aws_subnet.Subnet-QA-App3.arn
# #   resource_share_arn = aws_ram_resource_share.qa-ram.arn
# # }

# # resource "aws_ram_resource_association" "ram-data-subnet" {
# #   resource_arn       = aws_subnet.Subnet-QA-Data1.arn
# #   resource_share_arn = aws_ram_resource_share.qa-ram.arn
# # }

# # resource "aws_ram_resource_association" "ram-data2-subnet" {
# #   resource_arn       = aws_subnet.Subnet-QA-Data2.arn
# #   resource_share_arn = aws_ram_resource_share.qa-ram.arn
# # }

# # resource "aws_ram_resource_association" "ram-data3-subnet" {
# #   resource_arn       = aws_subnet.Subnet-QA-Data3.arn
# #   resource_share_arn = aws_ram_resource_share.qa-ram.arn
# # }
