variable "location" {
  description = "The full (Azure) location identifier for the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group to deploy the storage account to"
  type        = string
}

variable "environment" {
  description = "Working environment"
  type        = string
}

variable "bu_identifier" {
  type        = string
  description = "Short name of the business unit"
}

variable "number" {
  description = "Two digit number to use for this storage account name"
  type        = number
}

variable "virtual_network" {
  description = "Resource Group Name of the resources to be created in"
  type        = string
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
  type        = string
  default     = "LRS"
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created"
  type        = string
  default     = "Standard"
}

variable "account_kind" {
  description = "Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Changing this forces a new resource to be created. Defaults to StorageV2"
  type        = string
  default     = "StorageV2"
}

variable "access_tier" {
  description = "Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool, defaults to Hot"
  type        = string
  default     = "Hot"
}

variable "delete_retention_policy_days" {
  description = "Specifies the number of days that the blob should be retained, between 1 and 365 days. Defaults to 7"
  type        = number
  default     = 7
}

variable "default_action" {
  description = "Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow"
  type        = string
  default     = "Deny"
}

variable "bypass" {
  description = "Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of Logging, Metrics, AzureServices, or None"
  type        = list(string)
  default     = ["AzureServices"]
}

variable "allowed_ip_ranges" {
  description = "List of public IP or IP ranges in CIDR Format. Only IPV4 addresses are allowed. Private IP address ranges (as defined in RFC 1918) are not allowed"
  type        = list(string)
  default     = []
}

variable "allowed_virtual_network_subnet_ids" {
  description = "A list of resource ids for subnets"
  type        = list(string)
  default     = []
}

variable "containers" {
  description = "A list of containers to be created in the storage account"
  type        = list(string)
  default     = []
}

variable "min_tls_version" {
  description = "The minimum supported TLS version for the storage account. Possible values are TLS1_0, TLS1_1, and TLS1_2."
  type        = string
  default     = "TLS1_2"
}
