# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "organization" {
  description = "organization name in Cloud"
  type        = string
}

variable "workspace" {
  description = "Workspace need in the the Cloud"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
  default     = "t1.micro"
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}
variable "custom_tags" {
  description = "Custom tags to set on the Instance in the ASG"
  type        = map(string) 
  default     = {} 
}

variable "ami" {
description = "The AMI to run in the cluster"
type = string
default = "ami-0fb653ca2d3203ac1"
}

variable "server_text" {
description = "The text the web server should return"
type = string
default = "Hello, World"
}

variable "enable_autoscaling" {
description = "If set to true, enable auto scaling"
type = bool
}

