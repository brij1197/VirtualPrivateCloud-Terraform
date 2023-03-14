## Terraform-VPC

This is the source code that creates a VPC (Virtual Private Cloud) and all the associated resources in AWS.

### Installation
Terraform requires the following dependencies:

- AWS IAM Secret Access Key
- AWS Command Line Interface - https://aws.amazon.com/cli/
- Terraform v1.3.4 - https://developer.hashicorp.com/terraform/downloads

### Development
In development you can quickly get a VPC running by following these steps:

- Clone this repo
- Configure AWS CLI using `aws configure` if not configured
- Change the variables based on the set requirements (e.g Key, Region, Instance Type and Tags)
- Run `terraform init`. This will  initialize the working directory containing Terraform configuration files and install any required plugins.
- Run `terraform plan`. This will show the changes that are going to be added/changed or destroyed.
- At the end, run `terraform apply`. This will apply the changes and create the necessary resources.

Note: The resources that will be created are as follows:

- A Machine Image (Ubuntu-18.04)
- 2 Subnets (Private and Public)
- 2 EC2 Instances (one under the private subnet and one under the public subnet)
- An Internet Gateway
- A NAT Gateway
- An Elastic IP
- 2 Routing Tables (One associated with the Public Subnet and One associated with the Private Subnet)

### De-Allocate the resources
To de-allocate the entire resources that have been created, run `terraform apply -destroy`.

### General Information
Kindly refer to the documentation: https://developer.hashicorp.com/terraform/tutorials/aws-get-started
