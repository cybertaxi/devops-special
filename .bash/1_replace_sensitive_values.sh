#!/bin/bash
# Initialise all variables
source sensitive/terraform/providers.sh 
source sensitive/terraform/dev.sh 
source sensitive/ec2/keypair/ec2keypair.sh
echo value for region is $REGION
echo value for my own ipaddr is $DEVIPADDR
echo value for ec2 keypair name is $EC2KEYPAIRNAME

# cd ..
# Copy to temp folders..
chmod -R +r $(pwd)/terraform
cp -Tr $(pwd)/terraform $(pwd)/temp


# Replace providers information.
# sed -i "s/__replace_tf_provider_region__/$REGION/g" ./temp/terraform/providers.tf
sed -i "s/__replace_tf_provider_region__/$REGION/g" ./temp/main.tf
sed -i "s/__replace_with_my_ipaddr__/$DEVIPADDR/g" ./temp/200_network/main.tf
sed -i "s/__replace_key_pair_name__/$EC2KEYPAIRNAME/g" ./temp/900_app/main.tf
cd $(pwd)/temp/
# uncomment if stack not created.
#aws cloudformation create-stack --stack-name tfstate-essentials --template-body file://0_bootstrap//tf_state_cf.yaml

# terraform init
# terraform apply -auto-approve -lock=false
# pwd