terraform workspace show
terraform workspace list
terraform workspace new dev
terraform workspace new sit
terraform workspace new prod
terraform workspace select dev

i am in dev workspace

terraform init
terraform plan
terraform apply

terraform workspace select sit

i am in sit workspace

terraform init
terraform plan
terraform apply


terraform workspace select prod

i am in prod workspace

terraform init
terraform plan
terraform apply

 now go to s3 bucket and see all the 3 folder and state files has been created.



Now go to each work space and run the below command to destroy all created resources


terraform destory

