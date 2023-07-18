echo "=============== Running 4_module_network_apply.sh ====================="
cd $(pwd)/temp/
terraform apply -target=module.network_layer -auto-approve -lock=false


