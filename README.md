# Hello World Web Server 

# Technology use
1. Terraform
2. Packer
3. Powershell 
4. GitHub
5. Azure

## Local execution steps
1. Run the terraform apply inside terraform folder to provision base infra components
   eg: Excute the following cmd , chage .tfvars file for any config [Note down IP address after provisioing]
   [~/hello_world/terraform]$ terraform apply -var-file=testenv.tfvars
2. Run packer from packer folder to create a IIS enabled VM image 
   eg:
   [~/hello_world/packer]$ packer build -var-file=variables.json windows_web_server.json
3. Run ./create_webserver.ps1 from root folder to create a VM
4. Run webserver_health_check.ps1 to check the health of the server
   eg:
   ./webserver_health_check.ps1 -web_server_ip <enter the IP address obtained from step 1>

I created a Azure pipeline and put everything in pipeline to execute using service principle 

eg: az ad sp create-for-rbac --name 'SPN-HELLO-WORLD'  --role="Owner" --scopes  /subscriptions/mysubid/resourceGroups/rg-hello-world