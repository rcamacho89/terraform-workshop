# This is a basic Terraform Workshop

These demos will give you some examples of how to use Terraform in a basic way. We will work with the AWS provider.

# Terraform Topics 

* Resources;
* Variables;
* Implicity dependency;
* Explicity dependecy;
* Remote backend;
* Variables;
* Outputs;
* Data source;
* Dynamic block;
* Locals;
* Modules;
* Workspace.

# Installation

Use Terraform Official Website to download the binary [Terraform Download](https://www.terraform.io/downloads.html).

Once you have set up your environment to use the Terraform binary, you can configure your AWS CLI to use a profile. [Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

This example can be applied in Windows or Linux.

You must create an iam user with Programmatic Access in your AWS environment, because the Terraform will interact with AWS APIs and of course this user needs special privileges to create your resources.

```bash
# aws configure --profile (PROFILE_NAME)
AWS Access Key ID [None]: (YOUR ACCESS KEY ID)
AWS Secret Access Key [None]: (YOUR SECRET ACCESS KEY)
Default region name [None]: (CHOOSE YOUR DEFAULT REGION, EX: us-east-1)
Default output format [None]: JSON
```
AWS Environment:

- VPC;
- Public subnet;
- Private subnet;
- Public Route Table;
- Private Route Table;
- Internet Gateway;
- EC2 private subnet;
- EC2 public subnet.

## Usage

After access some demo directory, just run these sequence of commands :

```bash
TERRAFORM COMMANDS:

terraform validate

terraform init 

terraform plan

terraform apply
```

If you're having some issue on this step, please check your profile or provider configuration.

# Be careful

Don't forget to destroy your environment after test your resources, it is good to know that you can be charged for it ! :)