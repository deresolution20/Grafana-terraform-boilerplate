terraform {
  required_providers {
    grafana = {
      source = "grafana/grafana"
    }
  }
}

provider "grafana" {
  alias         = "cloud"
  cloud_api_key = var.grafana_cloud_api_key
}

resource "grafana_cloud_stack" "ticket1063366" {
  provider = grafana.cloud

  name        = "ticket1063366"
  slug        = "ticket1063366"
  region_slug = "us"
}

resource "grafana_cloud_stack" "eu1063366" {
  provider = grafana.cloud

  name        = "eu1063366"
  slug        = "eu1063366"
  region_slug = "eu"
}
