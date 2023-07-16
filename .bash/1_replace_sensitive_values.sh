#!/bin/bash
# Initialise all variables
source sensitive/terraform/providers.sh 
source sensitive/terraform/dev.sh 
echo value for region is $REGION
echo value for my own ipaddr is $DEVIPADDR

# cd ..
# Copy to temp folders..
chmod -R +r $(pwd)/terraform
cp -Tr $(pwd)/terraform $(pwd)/temp


# Replace providers information.
# sed -i "s/__replace_tf_provider_region__/$REGION/g" ./temp/terraform/providers.tf
sed -i "s/__replace_tf_provider_region__/$REGION/g" ./temp/main.tf
sed -i "s/__replace_with_my_ipaddr__/$DEVIPADDR/g" ./temp/200_network/main.tf
cd $(pwd)/temp/
# uncomment if stack not created.
#aws cloudformation create-stack --stack-name tfstate-essentials --template-body file://0_bootstrap//tf_state_cf.yaml

# terraform init
# terraform apply -auto-approve -lock=false
# pwd