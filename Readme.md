# Azure Bicep Template — Deploying API Management + Azure OpenAI

## Overview

This Bicep template provisions two key Azure resources:

- **Azure API Management (APIM)** — acts as a secure gateway for managing and exposing APIs.
- **Azure OpenAI Service** — provides access to powerful language models like GPT for enterprise use cases.

The template is designed for deployment via Azure CLI and follows best practices for modular, declarative infrastructure-as-code.

---

## Files Included

- `main.bicep` — the core Bicep template defining APIM and Azure OpenAI resources.
- `README.md` — this documentation file explaining usage and context.

---

## Deployment Instructions

To deploy this template using Azure CLI:

```bash
az login
az group create --name apim-openai-rg --location eastus
az deployment group create \
  --resource-group apim-openai-rg \
  --template-file main.bicep