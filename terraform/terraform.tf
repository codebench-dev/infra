terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "2.0.0"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.9.0"
    }
  }
}

provider "digitalocean" {
  # Configuration options
}

provider "scaleway" {
  zone = "fr-par-1"
}

terraform {
  backend "s3" {
    bucket                      = "codebench-tf"
    key                         = "state.tfstate"
    region                      = "fr-par"
    endpoint                    = "https://s3.fr-par.scw.cloud"
    skip_credentials_validation = true
    skip_region_validation      = true
  }
}
