variable "AWS_REGION" {
  description = ""
  type        = string
}

variable "INSTANCE_TYPE" {
  description = ""
  type        = string
}

variable "KEYPAIR_NAME" {
  description = "Private key to allow ssh connexion"
  type        = string
}

variable "AMI" {
  description = "Custom Betclic AMI"
  type        = string
}

variable "SUBNETID" {
  description = "subnet"
  type        = string
}

variable "SECURITYGROUP" {
  description = "security group"
  type        = string
}
