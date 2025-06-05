### Set environment
1. [yc CLI](https://yandex.cloud/ru/docs/cli/quickstart)
2. [terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
3. Add key ```yc iam key create --service-account-name my-sa --output key.json```
4. Init terraform ```terraform plan -var-file="variables.tfvars" ```
5. Get cloud_id ```yc resource-manager cloud list```
6. Get folder_id ```yc resource-manager folder list --cloud-id <your-cloud-id>```

### Deployment process
- Plan ```terraform plan -var-file="variables.tfvars"```
- Deploy ```terraform apply -var-file="variables.tfvars" -auto-approve```
- Destoy ```terraform destroy -var-file="variables.tfvars" -auto-approve```

### Usefull commands
- Format code ```terraform fmt --diff```
- Check if configuration is valid: ```terraform validate```
- Check if there is something to format ```terraform fmt --check```


### May be usefull for CI
- ```terraform apply```
- ```terraform output -json static_ip_addresses | jq -r '.[]' > vm_ips.txt```
- launch python script that takes list of ips and creates ansible inventory

### Access to the cluster

```bash
terraform apply -var-file="variables.tfvars" -auto-approve >> output.txt
```

```bash
yc managed-kubernetes cluster get-credentials catikqnh2o2v81luftqb --external
```

