# LocalStack EC2 Terraform Demo

## Requirements
- LocalStack
- Terraform
- AWS CLI + awscli-local

## Steps:

1. Start LocalStack:
```
localstack start
```

2. Initialize Terraform:
```
terraform init
```

3. Apply Terraform:
```
terraform apply -auto-approve
```

4. Describe Instances:
```
awslocal ec2 describe-instances
```

5. Check User Data (replace <InstanceId>):
```
awslocal ec2 describe-instance-attribute --instance-id <InstanceId> --attribute userData
```

6. Decode User Data (Optional):
```
echo <Base64> | base64 --decode
```

7. Terminate Instance:
```
awslocal ec2 terminate-instances --instance-ids <InstanceId>
```

