# Learning about [Terraform](https://www.terraform.io)

HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features. - [🌐 Source](https://developer.hashicorp.com/terraform/intro)

## How I can test too?

First you will need an AWS and Azure account, and create your credentials to use on Terraform. After those steps, you will need to store these credentials somewhere and add the following environment variables:

```bash
# Provide the values of the variables with those of your account

# AWS
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=

# Azure
export ARM_CLIENT_ID=
export ARM_TENANT_ID=
export ARM_SUBSCRIPTION_ID=
export ARM_CLIENT_SECRET=
```
