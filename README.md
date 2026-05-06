# Azure OpenAI with Terraform IaC

This repository provisions an Azure OpenAI resource (Cognitive Services account with `OpenAI` kind) and a model deployment using Terraform.

## What it creates

- Resource Group
- Azure OpenAI (Cognitive Services) account
- Azure OpenAI model deployment (e.g., `gpt-4o-mini`)
- Useful outputs (endpoint, resource name, location)

## Prerequisites

- Terraform >= 1.6
- Azure subscription
- Azure CLI logged in:
  - `az login`
- Sufficient permissions to create:
  - Resource groups
  - Cognitive Services accounts

## Quick start

1. Clone this repo:

   ```bash
   git clone https://github.com/your-org/azure-openai-terraform.git
   cd azure-openai-terraform
