Terraform
=========

- Website: https://www.terraform.io
- [![Gitter chat](https://badges.gitter.im/hashicorp-terraform/Lobby.png)](https://gitter.im/hashicorp-terraform/Lobby)
- Mailing list: [Google Groups](http://groups.google.com/group/terraform-tool)

<img alt="Terraform" src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

The key features of Terraform are:

- **Infrastructure as Code**: Infrastructure is described using a high-level configuration syntax. This allows a blueprint of your datacenter to be versioned and treated as you would any other code. Additionally, infrastructure can be shared and re-used.

- **Execution Plans**: Terraform has a "planning" step where it generates an *execution plan*. The execution plan shows what Terraform will do when you call apply. This lets you avoid any surprises when Terraform manipulates infrastructure.

- **Resource Graph**: Terraform builds a graph of all your resources, and parallelizes the creation and modification of any non-dependent resources. Because of this, Terraform builds infrastructure as efficiently as possible, and operators get insight into dependencies in their infrastructure.

- **Change Automation**: Complex changesets can be applied to your infrastructure with minimal human interaction. With the previously mentioned execution plan and resource graph, you know exactly what Terraform will change and in what order, avoiding many possible human errors.

For more information, see the [introduction section](http://www.terraform.io/intro) of the Terraform website.

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
