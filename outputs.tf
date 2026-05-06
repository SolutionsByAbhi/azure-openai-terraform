output "resource_group_name" {
  description = "Name of the resource group."
  value       = local.rg_name
}

output "openai_account_name" {
  description = "Name of the Azure OpenAI account."
  value       = azurerm_cognitive_account.openai.name
}

output "openai_location" {
  description = "Location of the Azure OpenAI account."
  value       = azurerm_cognitive_account.openai.location
}

output "openai_endpoint" {
  description = "Endpoint URL for the Azure OpenAI account."
  value       = azurerm_cognitive_account.openai.endpoint
}

output "openai_deployment_name" {
  description = "Name of the Azure OpenAI model deployment."
  value       = azurerm_cognitive_deployment.openai_deployment.name
}
