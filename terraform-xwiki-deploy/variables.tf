variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "environment" {
  description = "The environment for the resources (e.g., dev, test, prod)"
  type        = string
}

variable "app_service_plan_tier" {
  description = "The tier of the App Service Plan"
  type        = string
  default     = "Basic"
}

variable "app_service_plan_size" {
  description = "The size of the App Service Plan"
  type        = string
  default     = "B1"
}

variable "db_version" {
  description = "The version of the PostgreSQL database"
  type        = string
  default     = "13"
}

variable "db_admin_username" {
  description = "Username for the database administrator"
  type        = string
}

variable "db_admin_password" {
  description = "Password for the database administrator"
  type        = string
  sensitive   = true
}

variable "db_sku_name" {
  description = "The SKU name for the PostgreSQL Flexible Server"
  type        = string
  default     = "B_Standard_B1ms"
}

variable "storage_mb" {
  description = "Allocated storage for PostgreSQL in MB"
  type        = number
  default     = 5120  # Minimum 5GB for Azure PostgreSQL Flexible Server
}

variable "backup_retention_days" {
  description = "Backup retention days for PostgreSQL"
  type        = number
  default     = 7
}

variable "storage_account_tier" {
  description = "The tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"  # Changed to LRS for cost efficiency
}

variable "backup_container_name" {
  description = "Name of the blob container for backups"
  type        = string
  default     = "xwiki-backups"
}

variable "db_name" {
  description = "Name of the PostgreSQL database"
  type        = string
  default     = "xwikidb"
}