echo "=============== Running 2_init_provider.sh ====================="
cd $(pwd)/temp/
terraform init

terraform apply -auto-approve -lock=false


terraform output > ../sensitive/output/terraform-output.txt