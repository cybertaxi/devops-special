# devops-special

# Table of contents
1. [Introduction](#introduction)
1. [How to run?](#running)
2. [Future Improvement](#future_improvement)
3. [The Sensitive Stuff](#sensitive_layer)
3. [The Automation bash stuff](#bash_layer)
3. [The Terraform Layer](#terraform_layer)
3. [The Ansible Layer](#ansible_layer)
3. [The Kubernetes Layer](#kube_layer)

## This is the introduction <a name="introduction"></a>
The purpose of this repo is to strengthen my knowledge on Kubernetes, Ansible and Terraform. How does these services worked together. 

The applications for deployment currently is as follows:
- RocketChat, an open-source chat platform

## How to Run? <a name="running"></a>
```
    cd .bash
    ./main.sh
```

## Future Improvements & Addons <a name="future_improvement"></a>
- Implement monitoring on resources using popular monitoring tools like Grafana, Promethes or deploying the ELK stack.
- Applying the SRE concept of SLO, SLI and SLA.

## The Sensitive Stuff <a name="sensitive_layer"></a>
Cause I'm lazy to keep inserting the creds so this folder contains all the sensitive stuff and a bash script will copy and insert in a temp file and deploy. .gitignore will ignore all items in sensitive and temp folder.

Make sure that the following files are present, the values are as shown below:
```bash
|-- sensitive
    |-- terraform
    |-- ansible
```

```yaml

```

## The Automation bash stuff <a name="bash_layer"></a>
Contains the script to replace the terraform values and store into temp. 

Bash script will replace values with this prefixes and map the values accordingly.

```__replace_<layer name>_<name>__```

The deployment will execute the files in temp folder, this de-couples from the main temp files.

## The Terraform layer <a name="terraform_layer"></a>
This sections illustrate the Terraform layer of resources and its structure.

## The Ansible layer <a name="ansible_layer"></a>
This sections illustrate the Ansible layer of resources and its structure.

## The K8s layer <a name="kube_layer"></a>
This sections illustrate the Kubernetes layer of resources and its structure.
