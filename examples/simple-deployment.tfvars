subscription_id        = "00000000-0000-0000-0000-000000000000"
location               = "westeurope"
resource_group_name    = "rg-azure-openai-demo"
create_resource_group  = true

openai_account_name    = "aoai-demo-account-001"
openai_sku_name        = "S0"

openai_deployment_name = "gpt4o-mini-deployment"
openai_model_name      = "gpt-4o-mini"
openai_model_format    = "OpenAI"
openai_model_version   = ""   # let Azure choose default
openai_scale_type      = "Standard"
