# Terraform
> Quick reference for concepts and best practices for Terraform

## About
Terraform is an infrastructure management tool made by HashiCorp that lets you provision, manage, and maintain
cloud resources. Note that it is not a config management tool. Use Packer for things like creating base server
images. The term for this is immutable infrastructure.

## Style
- Indentation - 2 spaces
- Use blank lines for clarity
- Group single arguments
- Line up equal signs per block section

## Terraform Configuration Language

### Resource
- Building blocks of Terraform code
- Define the what of your infrastructure
- Different settings per provider

### Module
- Combine code into a logical group
- Pass in arguments
- Work like custom resources
- Root is the default module
- Need a `main.tf` file in a module
- May have a `variables.tf` file with the input variables
- May have a `outputs.tf` file with the output values
- Maybe a `README.md` to document module
- Can use remote sources for modules
- Can include providers and a provider version
- registry.terraform.io for modules from other providers

### Variable
- Can have a default value
- Documentation as code
- More complex logic is usually less readable
- Use variables when values may change

## Resources
-   