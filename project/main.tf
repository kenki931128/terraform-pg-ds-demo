locals {
  project_name = "terraform-demo-for-pg"
  project_id   = "terraform-demo-for-pg"
  folder_id    = "855669831100"

  default_region = "asia-northeast2"
  default_zone   = "asia-northeast2-a"
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }

  backend "gcs" {
    bucket = "terraform-pg-ds-demo"
    prefix = "terraform/state/terraform-pg-ds"
  }
}

provider "google" {
  project = local.project_id
  region  = local.default_region
  zone    = local.default_zone
}
