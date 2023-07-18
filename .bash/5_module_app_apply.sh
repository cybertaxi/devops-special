echo "=============== Running 4_module_app_apply.sh ====================="
cd $(pwd)/temp/
terraform apply -target=module.app_layer -auto-approve -lock=false


