#------------------------------------------------------------------------------
# Variables that need to be set
#------------------------------------------------------------------------------

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

#------------------------------------------------------------------------------
# CloudTrail
#------------------------------------------------------------------------------

variable "cloudwatch_log_group_name" {
  description = "The name of the CloudWatch Log Group that receives CloudTrail events."
  default     = "CloudtrailEvents"
  type        = string
}

variable "enabled" {
  description = "Enables logging for the trail. Defaults to true. Setting this to false will pause logging."
  default     = true
  type        = bool
}

variable "log_retention_days" {
  description = "Number of days to keep AWS logs around in specific log group."
  default     = 90
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the AWS S3 bucket."
  type        = string
}

variable "org_trail" {
  description = "Whether or not this is an organization trail. Only valid in master account."
  default     = "false"
  type        = string
}

variable "trail_name" {
  description = "Name for the Cloudtrail"
  default     = "CloudtrailEvents"
  type        = string
}

variable "iam_role_name" {
  description = "Name for the CloudTrail IAM role"
  default     = "CloudtrailCWLogs"
  type        = string
}

variable "iam_policy_name" {
  description = "Name for the CloudTrail IAM policy"
  default     = "CloudtrailCWLogs"
  type        = string
}

variable "s3_key_prefix" {
  description = "S3 key prefix for CloudTrail logs"
  default     = "onum-cloudtrail"
  type        = string
}