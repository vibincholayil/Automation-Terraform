# terraform

download azure cli and install it

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