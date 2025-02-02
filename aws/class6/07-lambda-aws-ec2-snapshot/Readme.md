Requirements

    To ec2 instance snapshot use lambda function

Instance tagname

        Name = demo

terraform install - https://developer.hashicorp.com/terraform/install


Reference:

    https://www.terraform.io/downloads.html

update your values in the 5-variable.auto.tfvars file:

    accessKey           =""
    secretKey           =""
    region              ="eu-west-1"
    lambdaname          ="lambda-aws-ec2-start"
    tagname             ="office-hours"
    tagvalue            ="cbc-platform"

commands

    1. terraform version
    2. terraform init
    3. terraform plan
    4. terraform apply
    5. terraform destroy

| crontab timing | Days |
| --------------- | --------------- |
| 00:00 | Daily |
| 04:00 | Daily | 
| 08:00 | Dialy |
| 12:00 | Daily |
| 16:00 | Daily |
| 20:00 | Daily |
