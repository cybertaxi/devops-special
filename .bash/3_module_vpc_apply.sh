echo "=============== Running 3_module_vpc_apply.sh ====================="
cd $(pwd)/temp/
terraform apply -target=module.vpc_layer -auto-approve -lock=false


