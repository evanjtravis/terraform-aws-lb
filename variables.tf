# Load balancer arguments

variable "alias" {
  description = "List of maps, each element of which contains two keys: 'hostname' (Route 53 alias) and 'domain'"
  default     = []
}

variable "name" {
  description = "Load balancer name"
}

variable "internal" {
  description = "Use internal load balancer without public IP"
  default     = "false"
}

variable "security_groups" {
  description = "A list of security group IDs to assign to the LB"
  default     = []
}

variable "access_logs" {
  description = "Map describing the destination bucket for logs"
  default     = {}
}

variable "vpc" {
  description = "Name of VPC to use"
}

variable "tier" {
  description = "Name of subnet tier (e.g., public, private, nat)"
}

# TODO: missing subnets
# TODO: missing subnet_mapping

variable "idle_timeout" {
  description = "The time in seconds that the connection is allowed to be idle"
  default     = "60"
}

variable "enable_deletion_protection" {
  description = "If true, deletion of the load balancer will be disabled via the AWS API. This will prevent Terraform from deleting the load balancer."
  default     = "false"
}

variable "enable_http2" {
  description = "Indicates whether HTTP/2 is enabled in application load balancers"
  default     = "true"
}

variable "ip_address_type" {
  description = "The type of IP addresses used by the subnets for your load balancer. (i.e., ipv4 or dualstack)"
  default     = ""
}

variable "tags" {
  description = "Tags to be applied to resources where supported"
  default     = {}
}

# Listener arguments

variable "ports" {
  description = "Keys: port, protocol, ssl_policy, certificate_arn. Values: 80, HTTP, ..."
  default     = []
}

variable "secure_ports" {
  description = "Keys: security_group, port, protocol, ssl_policy, certificate_arn. Values: 80, HTTP, ..."
  default     = []
}

variable "ssl_policy" {
  description = "Name of the SSL Policy for the listener. Required if protocol is HTTPS"
  default     = ""
}

variable "certificate_arn" {
  description = "ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS"
  default     = ""
}
