variable "domain" {
  description = "Route53 domain name to use for ACM certificate. Route53 zone for this domain should be created in advance"
  type        = string
  default     = ""
}

variable "alb_ingress_cidr_blocks" {
  description = "List of IPv4 CIDR ranges to use on all ingress rules of the ALB - use your personal IP in the form of `x.x.x.x/32` for restricted testing"
  type        = list(string)
}

variable "github_owner" {
  type        = string
  description = "AWS TAG - Owner name used in a tag to easily idenitfy Atlantis assets"
  default = "Atlantis-Bot"
}

variable "staging_environment" {
  type        = string
  description = "AWS TAG - The environment your Atlantis deployment will be running in"
  default = "Prod"
}

variable "github_user" {
  description = "The username of your new github account to run Atlantis"
  type        = string
}

variable "github_repo_names" {
  description = "List of Github repositories that should be monitored by Atlantis"
  type        = list(string)
}

variable "name" {
  description = "The name of you deployment"
  type        = string
}

variable "s3_bucket_name" {
  description = "Unique name for your S3 bucket"
  type        = string
}

variable "aws_region" {
  description = "The region you plan to deploy your Atlantis setup in"
  type        = string
}

############################
# Github
############################
variable "GITHUB_TOKEN" {
  type        = string
  description = "Required - PAT Token for the github account"
  sensitive   = true
}

############################
# TailScale
############################
variable "TSKEY_EPHEMERAL_SERVER" {
  type        = string
  description = "The Auth Key to use for new Ephemeral servers on TailScale"
  sensitive   = true
  default     = ""
}

############################
# AWS
############################
variable "AWS_ACCESS_KEY_ID" {
  type        = string
  description = "AWS Key"
  sensitive   = true
  default     = ""
}
variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "AWS Secret"
  sensitive   = true
  default     = ""
}

############################
# GoDaddy
############################
variable "GODADDY_API_KEY" {
  type        = string
  description = "GoDaddy API Key"
  sensitive   = true
  default     = ""
}
variable "GODADDY_API_SECRET" {
  type        = string
  description = "GoDaddy API Secret"
  sensitive   = true
  default     = ""
}