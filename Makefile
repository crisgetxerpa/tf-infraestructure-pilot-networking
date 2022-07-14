.PHONY: all build init validate


all: validate plan apply destroy
build: validate plan


init:
	@terraform init

validate:
	@terraform validate

plan:
	@terraform plan -var-file="terraform.tfvars"

apply:
	@terraform apply -var-file="terraform.tfvars" -auto-approve

destroy:
	@terraform destroy -auto-approve
