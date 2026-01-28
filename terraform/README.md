# Terraform
> Quick reference for concepts and best practices for Terraform

## About
Terraform is an infrastructure management tool made by HashiCorp that lets you provision, manage, and maintain
cloud resources. Note that it is not a config management tool. Use Packer for things like creating base server
images. The term for this is immutable infrastructure.

## Terraform Configuration Language

### Resource
- Building blocks of Terraform code
- Define the what of your infrastructure
- Different settings per provider

### Style
- Indentation - 2 spaces
- Use blank lines for clarity
- Group single arguments
- Line up equal signs per block section

