cd $(pwd)/temp/.terraform
terraform refresh
terraform output -module=vpc_layer
