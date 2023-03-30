# Terraform configuration to set up providers by version.
terraform {
  required_providers {
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.0"
    }
  }
}

# Configure the provider to use a specific project, by default.
# In this guide, this project is referred to as the "quota-check project".
# Including `user_project_override = true` is required if a `billing_project` is specified.
provider "google-beta" {
 #user_project_override = true
  impersonate_service_account="impersonate-service-account@avian-amulet-378416.iam.gserviceaccount.com"
}
