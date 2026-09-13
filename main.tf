terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.0"
    }
   }
  }

  provider "local" {}

  resource "local_file" "cloud_deployment_note" {
    filename = "${path.module}/deployment-status.txt"
    content = "project: my-cloud-project\nStatus: Successfully containerized and pushed to GitHub!\nTimestamp: 2026-09-13"
  }
