variable "prefix" {
  type    = string
  default = "github-oidc-demo"
}

variable "location" {
  type    = string
  default = "UK South"
}

variable "github_token" {
  type      = string
  sensitive = true
}

variable "github_organisation_target" {
  type    = string
  default = "cognit-ai"
}

variable "github_repository_name" {
  type    = string
  default = "cognit-xwiki"
}

variable "environments" {
  type    = list(string)
  default = ["dev", "test", "prod"]
}

variable "use_managed_identity" {
  type    = bool
  default = true
  description = "If selected, this option will create and configure a user assigned managed identity in the subscription instead of an AzureAD service principal."
}