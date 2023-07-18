# Destroy the resources that requires money
cd $(pwd)/temp/
terraform destroy -target module.app_layer -lock=false -auto-approve


# aws cloudformation delete-stack --stack-name tfstate-essentials