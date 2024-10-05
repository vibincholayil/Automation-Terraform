# Terraform-Automation

- **https://registry.terraform.io/browse/providers**

# Visual studio code

- https://code.visualstudio.com/download
- post installaiton install extensions
---  aws toolkit
--- azure account

# AWS

- install awscli
- https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html


# AZURE

## Download azure cli and install it

https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli#run-the-azure-cli


go to portal.azure.com/

go to https://portal.azure.com/#view/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/

you note down the Tenant ID

az login --tenant <Tenant ID>
az login --tenant 0f152e3242ea-8f7d-42343242324e3-a047-9fb1d02342984f66


- For Azure CLI, use one of the commands az login, az account list, or az account tenant list. All of command's included below return the tenantId property for each of your subscriptions.

- run this command in azure cli

```
az account list
az account tenant list
```


- Get all subscriptions for a tenant.

```
az account subscription list
```

from visual studio code run the below command

```
az login --tenant 0f152234eea-8f7d-4423423223e3-a047-9fb1d0984f6623423432
```

go to learn.microsoft.com/en-us/azure/  --> any services --> go to quickstart --> terraform 



- Use the terraform show command: Once the plan is generated, you can use the following command to display the content of the main.tfplan file in a human-readable format:

```
terraform show main.tfplan
```


- This will output the detailed plan, including the resources Terraform will add, change, or destroy.


### Optional: Save the Plan in JSON Format
- If you need to process the plan programmatically (e.g., for automation or analysis), you can output the plan in JSON format.

- Generate JSON formatted plan:

```
terraform show -json main.tfplan > plan.json
```

- Read the JSON file: The plan.json file can now be used for further analysis or programmatically parsed by other tools.


# Terraform

## What is Terraform?
Terraform is a tool that helps you create, manage, and update infrastructure (like servers, networks, and databases) using code. Imagine it like a blueprint or recipe for setting up IT resources in the cloud. Instead of manually setting up servers or networks, you write code that describes what you want, and Terraform takes care of building it for you.

## Why Terraform?
Terraform makes managing IT infrastructure easy, especially when dealing with large or complex setups. Instead of clicking around in cloud dashboards, you can use a single file that automatically creates everything you need. It's like programming a robot to set up your cloud resources.

## What is the Use of Terraform?
Terraform is mainly used for Infrastructure as Code (IaC). It allows you to automate cloud infrastructure setup, track changes, and create consistent environments across different clouds like AWS, Azure, and Google Cloud. For example, if you want to launch 100 servers on AWS, Terraform can do it in a few minutes with just a script.

## What is the Difference Between Ansible and Terraform (Layman Example)?
**Terraform** : Imagine you’re setting up a new house. You write down a plan for how many rooms you need, where the windows go, and which appliances you want. Terraform is the tool that follows this plan to build your house from scratch.

**Ansible**: Now, imagine that after the house is built, you need to paint the walls, set up the TV, and install security cameras. Ansible is the tool you use to configure and make changes to the house after it’s already built.

## **In short**:

- Terraform creates the infrastructure (like building a new house).
- Ansible configures and manages it (like decorating or updating an existing house).

## When Do We Need Terraform? (Layman Example)

Use Terraform when you need to set up new infrastructure from scratch.

## Example:

- If you’re starting a new website and need to create servers, databases, and networking in the cloud (like AWS or Azure), Terraform will automatically build everything for you based on your instructions.

## When Do We Need Ansible? (Layman Example)

Use Ansible when you need to configure and manage existing infrastructure.

## Example:

- If you already have servers running and you want to install new software on them or change their settings (like setting up security or updating software), Ansible will handle it for you.

## What Scenarios Do We Need Terraform?

- When launching a new infrastructure setup.
- When you need to manage infrastructure across multiple clouds (AWS, Azure, Google Cloud).
- When you want to create and destroy infrastructure as needed (e.g., creating test environments that you later delete).


## Example: 

A company wants to set up a new web application that requires servers, databases, and load balancers on AWS. Instead of manually setting these up, they use Terraform to create everything in one go.

## What Scenarios Do We Need Ansible?

- When you need to install software or make updates on existing servers.
- When you want to automate repetitive tasks like applying security patches or setting up users.


## Example: 

A company has 50 servers and wants to install a new version of a software package on all of them. Instead of logging into each server and doing it manually, they use Ansible to do it automatically.

## What is Mutable and Immutable? (Layman Example)
- Mutable: Something that can be changed after it's been created.

## Example: 

If you build a Lego house and keep changing the walls, doors, and windows, it's mutable. You're continuously updating or modifying it.

## Immutable: 

Something that cannot be changed after it's been created. If you need a change, you throw it away and build a new one from scratch.

## Example: 

Imagine baking a cake. Once it's baked, you can’t change it. If you want a different flavor, you bake a new cake.

## In IT terms:

- Mutable Infrastructure: You update or make changes to the existing servers.
- Immutable Infrastructure: If a server needs a change, you destroy it and launch a brand new one.


## What are the Pros and Cons of Terraform?

## Pros:

- Multi-cloud support: Works with AWS, Azure, Google Cloud, and more.
- Infrastructure as Code: Everything is documented as code, which means it's easy to track changes and automate processes.
- Repeatable: You can create the same environment multiple times, reducing the risk of human errors.
- Collaboration: Teams can work on the same infrastructure code and track changes through version control (like Git).


## Cons:

- Learning curve: Terraform requires learning a new syntax (HashiCorp Configuration Language - HCL), which might be a bit tricky for beginners.
- State management: Terraform keeps track of the infrastructure state, and if it’s not managed properly, it can lead to issues.
- Limited configuration: Terraform is great for creating infrastructure but isn’t as powerful as Ansible when it comes to configuring software on servers.