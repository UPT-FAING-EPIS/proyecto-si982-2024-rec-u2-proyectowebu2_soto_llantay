terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0.0"
    }
  }
  required_version = ">= 0.14.9"
}

variable "suscription_id" {
  type        = string
  description = "aba87226-03f9-4205-a6d4-a62d7e08e8ab"
}

provider "azurerm" {
  features {}
  subscription_id = var.suscription_id
}

# Crear el grupo de recursos
resource "azurerm_resource_group" "rg" {
  name     = "upt-arg-app"
  location = "centralus"
}

# Crear el Plan de Servicio de Aplicación (Windows)
resource "azurerm_service_plan" "appserviceplan" {
  name                = "upt-asp-app"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Windows"  # Cambiado a Windows
  sku_name            = "F1"
}

# Crear la Aplicación Web en Azure para .NET Framework
resource "azurerm_windows_web_app" "webapp" {
  name                = "upt-awa-bolsatrabajo"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.appserviceplan.id

  site_config {
    minimum_tls_version = "1.2"
    always_on           = false
    use_32_bit_worker   = true  # ✔️ Nombre correcto

    application_stack {
      current_stack        = "dotnet"  # 🔥 Campo REQUERIDO
      net_framework_version = "v4.8"   # ✔️ Versión de .NET
    }
  }
}