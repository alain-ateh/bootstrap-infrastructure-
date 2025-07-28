aws_region    = "us-east-2"
environment   = "prod"
ami_id        = "ami-0c55b159cbfafe1d0"  # Amazon Linux 2
instance_type = "t3.large"
key_name      = "your-prod-key-pair"

artifacts_bucket_name  = "jenkins-build-artifacts"
dynamodb_table_name   = "application-data"

allowed_ssh_cidr     = ["10.0.0.0/8"]  # Restrict SSH access in prod
allowed_jenkins_cidr = ["10.0.0.0/8"]  # Restrict Jenkins access in prod