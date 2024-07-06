
# Terraform 

Terraform is an infrastructure as code tool using which we can provision and manage infrastructure in any cloud.


**Features:**

***1. Multi-Cloud Support:***
- Terraform supports multiple cloud providers, including AWS, Azure, Google Cloud Platform, and many others.
- This allows you to manage infrastructure across different cloud environments using a single tool.

***2. Code Reusability:*** 
- Terraform enables code reusability, which leads to reduced duplication, improved maintainability,
- and faster development cycles in managing infrastructure as code.

***3. State Management:*** 
- Terraform maintains a state file that keeps track of the current state of your infrastructure

***4. Plan and Apply Workflow:*** 
- Terraform follows a "plan and apply" workflow, where you first generate an execution plan to preview the changes
- Terraform will make to your infrastructure, and then apply the plan to make those changes.


Download and Configure AWS CLI:

We will create one aws profile to authenticate with terraform instead of adding secret and access keys directly.
To create profile use following command


**AWS CLI Installation:**

We will create one aws profile to authenticate with terraform instead of adding secret and access keys directly.

````
sudo apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
````
````
aws --version
````
To create profile use following command

### aws configure   --profile  tf-user
Provide
- Secret key:
- Access key:
- Region:
- Format: json



**Terraform Installation:Ubuntu**
````
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
````
````
terraform --version
````
