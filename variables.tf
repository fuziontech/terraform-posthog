variable "project_name" {
  description = "The name of the project."
  default     = "posthog"
}

variable "aws_access_key" {
  description = "The AWS access key."
}

variable "aws_secret_key" {
  description = "The AWS secret key."
}

variable "aws_cloudfront_distribution" {
  description = "The AWS secret key."
}

variable "public_key" {
  description = "The public key."
}

variable "aws_region" {
  description = "The AWS region to create resources in."
  default     = "us-east-1"
}

variable "remote_state_bucket" {
  description = "The name of the s3 bucket to store the remote state in."
  default     = "terraform-state.example.com"
}

variable "vpc_id" {
  description = "The id of the vpc to launch in."
}

variable "public_subnet_id" {
  description = "The id of the private subnet to launch in."
}

variable "private_subnet_id" {
  description = "The id of the private subnet to launch in."
}

variable "ecs_remote_state_key" {
  description = "The name of the key to store the remote state in."
  default     = "vpc-terraform.tfstate"
}

variable "ecs_cluster_name" {
  description = "The name of the Amazon ECS cluster."
  default     = "posthog"
}

/* ECS optimized AMIs per region */
variable "amis" {
  default = {
    us-east-1 = "ami-0aee8ced190c05726"
    us-east-2 = "ami-0d9ef3d936a8fa1c6"
    us-west-1 = "ami-0fc0ce1549e302a52"
    us-west-2 = "ami-088bb4cd2f62fc0e1"
    eu-west-1 = "ami-0a74b180a0c97ecd1"
    eu-west-2 = "ami-04967dd60612d3b49"
    eu-west-3 = "ami-032a9f3e531acca53"
  }
}

variable "availability_zones" {
  default     = "us-east-1a,us-east-1c,us-east-1d"
  description = "The availability zones in this environment (must be a comma-deliminated list of availability zones with no spaces)"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "The aws ssh key name."
  default     = "posthog"
}

variable "host_port" {
  description = "The instance port"
  default     = "8000"
}

variable "container_port" {
  description = "The container port"
  default     = "8000"
}

variable "bastion_aws_region" {
  description = "The bastion region"
  default     = "us-east-1"
}

variable "vpc_availability_zone" {
  description = "The vpc availability zone"
  default     = "us-east-1a,"
}

# Ubuntu 20.04
variable "bastion_aws_amis" {
  description = "The bastion amis"
  default = {
    us-east-1 = "	ami-00579fbb15b954340"
  }
}

variable "aws_autoscaling_group_min_size" {
  description = "The autoscaling group minimum size"
  default     = 2
}

variable "aws_autoscaling_group_max_size" {
  description = "The autoscaling group maximum size"
  default     = 10
}

variable "aws_autoscaling_group_desired_capacity" {
  description = "The autoscaling group desired capacity"
  default     = 2
}

variable "docker_image" {
  description = "The Docker image to use."
  default     = "posthog/posthog:latest"
}

// RDS
// https://docs.aws.amazon.com/AmazonRDS/latest/CommandLineReference/CLIReference-cmd-CreateDBInstance.html

variable rds_allocated_storage {
  description = "Amount of storage to be initially allocated for the DB instance, in gigabytes."
  default     = 80
}

variable rds_engine {
  description = "Name of the database engine to be used for this instance."
  default     = "postgres"
}

variable rds_engine_version {
  description = "Version number of the database engine to use."
  default     = "12.2"
}

variable rds_instance_class {
  description = "The compute and memory capacity of the instance"
  default     = "db.t3.micro"
}

variable database_name {
  description = "The name of the database."
  default     = "posthog"
}

variable database_user {
  description = "The name of the master database user."
  default     = "posthog"
}

variable database_password {
  description = "Password for the master DB instance user"
  default     = "posthog"
}

variable rds_storage_type {
  description = "Specifies the storage type for the DB instance."
  default     = "standard"
}

// ElastiCache
// http://docs.aws.amazon.com/cli/latest/reference/elasticache/create-cache-cluster.html

variable elasticache_cache_name {
  description = "Specifies the name of the cache instance."
  default     = "posthog"
}

variable elasticache_engine_version {
  description = "Specifies the engine version for the cache instance."
  default     = "5.0.6"
}

variable elasticache_maintenance_window {
  description = "Specifies the maintenence window for the cache instance."
  default     = "sun:05:00-sun:09:00"
}

variable elasticache_instance_type {
  description = "Specifies the instance type for the cache instance."
  default     = "cache.t3.micro"
}

# Django
variable "secure_ssl_redirect" {
  description = ""
  default     = false
}

variable "secret_key" {
  description = ""
  default     = "please dont use this default"
}

variable "settings_module" {
  description = ""
}

variable "database_url" {
  description = ""
}

variable "sentry_dsn" {
  description = ""
}

variable "ssl_certificate_id" {
  description = ""
}

variable "keypair_name" {
  description = ""
}


variable "uwsgi_processes" {
  description = ""
}

variable "uwsgi_harakiki" {
  description = ""
}

variable "broker_url" {
  description = ""
}

variable "internal_zone_id" {
  description = ""
}

variable "admin_url" {
  description = "admin"
}

variable "allowed_hosts" {
  description = ""
}

variable "varnish_host_port" {
  description = ""
  default     = "8888"
}

variable "varnish_container_port" {
  description = ""
  default     = "80"
}

variable "varnish_health_check_url" {
  description = ""
  default     = "/200/"
}

variable "redis_host" {
  description = ""
  default     = "redis.internal"
}

variable "smtp_host" {
  description = ""
}

variable "smtp_port" {
  description = ""
}

variable "smtp_host_user" {
  description = ""
}

variable "smtp_host_password" {
  description = ""
}

variable "smtp_use_tls" {
  description = ""
}

variable "smtp_use_ssl" {
  description = ""
}

variable "default_from_email" {
  default     = "tim@posthog.com"
  description = ""
}
