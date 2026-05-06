variable "subscription_id" {
  description = "Azure subscription ID where resources will be created."
  type        = string
}

variable "location" {
  description = "Azure region for the resources."
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Name of the resource group to create or use."
  type        = string
  default     = "rg-azure-openai-demo"
}

variable "create_resource_group" {
  description = "Whether to create the resource group (true) or use an existing one (false)."
  type        = bool
  default     = true
}

variable "openai_account_name" {
  description = "Name of the Azure OpenAI (Cognitive Services) account."
  type        = string
  default     = "aoai-demo-account"
}

variable "openai_sku_name" {
  description = "SKU name for the Azure OpenAI account."
  type        = string
  default     = "S0"
}

variable "openai_deployment_name" {
  description = "Name of the Azure OpenAI model deployment."
  type        = string
  default     = "gpt4o-mini-deployment"
}

variable "openai_model_name" {
  description = "Model name to deploy (e.g., gpt-4o-mini)."
  type        = string
  default     = "gpt-4o-mini"
}

variable "openai_model_format" {
  description = "Model format for the deployment (e.g., OpenAI, OpenAI.ChatCompletion)."
  type        = string
  default     = "OpenAI"
}

variable "openai_model_version" {
  description = "Model version to deploy. Use empty string to let Azure pick default."
  type        = string
  default     = ""
}

variable "openai_scale_type" {
  description = "Scale type for the deployment (e.g., Standard)."
  type        = string
  default     = "Standard"
}
