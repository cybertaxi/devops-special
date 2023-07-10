#!/bin/bash
# Initialise all variables
source sensitive/terraform/providers.sh 
echo value for region is $REGION

# cd ..
# Copy to temp folders..
chmod -R +r $(pwd)/terraform
cp -r $(pwd)/terraform/ temp/

# Replace providers information.
# sed -i "s/__replace_tf_provider_region__/$REGION/g" ./temp/terraform/providers.tf
sed -i "s/__replace_tf_provider_region__/$REGION/g" ./temp/main.tf
cd $(pwd)/temp/
aws cloudformation create-stack --stack-name tfstate-essentials --template-body file://0_bootstrap//tf_state_cf.yaml


terraform init
terraform apply -auto-approve


cd ..

