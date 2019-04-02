variable "zones" {
  type        = "list"
  description = "DNS zone names"
}

variable "location" {
  default     = "West Europe"
  description = "The Azure region in which regional resources should be provisioned (VMs and resolver network)"
}

variable "resolver_count" {
  type  = "string"
  description = "Number of resolver VMs"
  default = 2
}

variable "resolver_vnet_prefix" {
  type        = "string"
  description = "Resolver virtual network address space"
  default     = "10.53.0.0/16"
}

variable "resolver_subnet_prefix" {
  type        = "string"
  description = "Resolver subnet address space"
  default     = "10.53.53.0/24"
}

variable "resolver_vm_size" {
  type        = "string"
  description = "Resolver VM tier and size"
  default     = "Standard_B1ls"
}

variable "resolver_vm_admin_username" {
  type        = "string"
  description = "Resolver VM admin username"
}

variable "resolver_vm_admin_ssh_pub_key_file" {
  type        = "string"
  description = "Resolver VM admin ssh public key path"
}

variable "resolver_client_whitelist" {
  type        = "list"
  description = "List of CIDR entries of acceptable DNS resolver client IPs"
  default = [
    "10.0.0.0/8",
    "172.16.0.0/12",
    "192.168.0.0/16"
  ]
}
