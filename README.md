Terraform
=========

- Website: https://www.terraform.io
- GitHub: https://github.com/hashicorp/terraform

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

Getting Started & Documentation
-------------------------------

If you're new to Terraform and want to get started creating infrastructure, please checkout our [Getting Started](https://www.terraform.io/intro/getting-started/install.html) guide, available on the [Terraform website](http://www.terraform.io).

All documentation is available on the [Terraform website](http://www.terraform.io):

  - [Intro](https://www.terraform.io/intro/index.html)
  - [Docs](https://www.terraform.io/docs/index.html)

Files for this Demonstration
----------------------------

README.md - This file

LICENSE - Just a standard Apache license

.gitignore - Default .gitignore file for a Terraform project on GitHub

gcp.tf - Basic connection information for the provider (GCP in this case)

compute.tf - Includes the information to create a new instance and run a startup script

network.tf - The resource to create a new VPC

bootstrap.sh - Used as a startup script in GCP

vars.tf - To use a variable from .tfvars or the environment it needs to be declared

terraform.tfvars.example - Default variables and .tfvars are not committed by default with our .gitignore file


Using this Demonstration
------------------------

```
# Retrieving the configuration files from GitHub
$ git clone https://github.com/vincepower/terraform-cicd.git
$ cd terraform-cicd

# Edit terraform.tfvars.example and save it as terraform.tfvars
$ cp terraform.tfvars.example terraform.tfvars
$ vi terraform.tfvars

# Init creates all the required suppoort files in the directory
# these do not usually go in source control
$ terraform init 

# Validate will check for syntax errors but is not required
# Will include all *.tf files in the directory
$ terraform validate

# Plan will run automatically during apply in v0.12 and higher
# Will include all *.tf files in the directory
$ terraform plan 

# Apply will execute the plan (and build it in the latest versions)
# Will include all *.tf files in the directory
$ terraform apply

# Show will display what Terraform successfully executed
$ terraform show

# Destroy will destroy all managed resources that are referenced in this directory
$ terraform destroy

```
