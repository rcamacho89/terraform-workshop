# This is a basic Terraform Workshop

It will give you some examples of how to use Terraform in a basic way. We will work with the AWS provider.

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

```bash
# aws configure --profile (PROFILE_NAME)
AWS Access Key ID [None]: (YOUR ACCESS KEY ID)
AWS Secret Access Key [None]: (YOUR SECRET ACCESS KEY)
Default region name [None]: (CHOOSE YOUR DEFAULT REGION, EX: us-east-1)
Default output format [None]: JSON
```

## Usage

AWS Environment:

- VPC;
- Public subnet;
- Private subnet;
- Public Route Table;
- Private Route Table;
- Internet Gateway;
- EC2 private subnet;
- EC2 public subnet.

The environment above we will have after use a complete module.

After access some example, just run these sequence of commands :

```bash
TERRAFORM COMMANDS:

terraform validate

terraform init 

terraform plan

terraform apply
```

# Be careful

Don't forget to destroy your environment after test your resources, it is good to know that you can be charged for it ! :)