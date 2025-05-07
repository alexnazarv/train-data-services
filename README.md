### Set environment
1. [yc CLI](https://yandex.cloud/ru/docs/cli/quickstart)
2. [terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Deployment process
- Plan ```terraform plan -var-file="variables.tfvars"```
- Deploy ```terraform apply -var-file="variables.tfvars" -auto-approve```
- Destoy ```terraform destroy --auto-approve```

### Usefull commands
- Format code ```terraform fmt --diff```
- Check if configuration is valid: ```terraform validate```
- Check if there is something to format ```terraform fmt --check```


### CI indeas
- ```terraform apply```
- ```terraform output -json static_ip_addresses | jq -r '.[]' > vm_ips.txt```
- launch python script that takes list of ips and creates ansible inventory
