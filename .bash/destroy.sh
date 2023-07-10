
cd $(pwd)/temp/
terraform destroy -lock=false


aws cloudformation delete-stack --stack-name tfstate-essentials