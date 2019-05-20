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

gcp.tf - Includes the basic information to connect to the cloud provider
gke.tf - Includes the basic resource information to stand up a GKE cluster
vars.tf - Any variables that are needed.

Using this Demonstration
------------------------

```
# Retrieving the configuration files from GitHub
$ git clone https://github.com/vincepower/terraform-cicd.git
$ cd terraform-cicd

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
