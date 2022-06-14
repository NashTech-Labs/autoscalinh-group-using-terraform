# ASG using terraform

This terraform script will create an autoscaling group in aws cloud. You just need to follow the below steps:

1. Just configure your own credentials in .aws/credentials file.
2. Update the profile="  " by your own credentials name in main.tf
4. Update the test.tfvars file as per your requirement
3. run "terraform apply --var-file test.tfvars"
