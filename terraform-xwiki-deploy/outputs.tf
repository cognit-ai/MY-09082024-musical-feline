output "resource_group_name" {
  value = azurerm_resource_group.xwiki_rg.name
}

output "app_service_name" {
  value = azurerm_app_service.xwiki_app.name
}

output "app_service_url" {
  value = "https://${azurerm_app_service.xwiki_app.default_site_hostname}"
}

output "postgresql_server_name" {
  value = azurerm_postgresql_server.xwiki_db.name
}

output "postgresql_server_fqdn" {
  value = azurerm_postgresql_server.xwiki_db.fqdn
}

output "postgresql_database_name" {
  value = azurerm_postgresql_database.xwiki_db.name
}

output "storage_account_name" {
  value = azurerm_storage_account.xwiki_storage.name
}

output "backup_container_name" {
  value = azurerm_storage_container.xwiki_backups.name
}

output "application_insights_name" {
  value = azurerm_application_insights.xwiki_insights.name
}

output "application_insights_instrumentation_key" {
  value     = azurerm_application_insights.xwiki_insights.instrumentation_key
  sensitive = true
}