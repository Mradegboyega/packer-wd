packer {
  required_plugins {
    digitalocean = {
      version = ">= 1.0.4"
      source  = "github.com/digitalocean/digitalocean"
    }
  }
}

locals {
  timestamp = formatdate("YYYY-MM", timestamp())
}


source "digitalocean" "adeconfig" {
  api_token    = var.api_token
  image        = "ubuntu-22-04-x64"
  region       = "nyc3"
  size         = "s-1vcpu-1gb"
  ssh_username = "root"
}

build {
  sources = ["source.digitalocean.adeconfig"]

  provisioner "shell" {
    inline = [
      "uname -m",
      "whoami",
      "groupadd -g 1001 devspace",
      "useradd devspace -m -g 1001 -u 1001",
    ]
  }
}

