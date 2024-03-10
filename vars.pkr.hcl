variable "api_token" {
  description = "my digital ocean token"
  type        = string
  default     = env("DIGITALOCEAN_TOKEN")
}

variable "snapshot_name" {
  description = "standard name for our snapshot"
  type        = string
  default     = "ubuntu-nginx"
}

variable "image" {
  description = "type of the os image for packer"
  type        = string
  default     = "ubuntu-22-04-x64"
}

variable "droplet_name" {
  description = "name of our droplet"
  type        = string
  default     = "ubuntu-nginx-test"
}

variable "size" {
  description = "desired ram size"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "tags" {
  description = "our lovely tags"
  type        = list(string)
  default     = ["dev-environment", "packer-test", "cloud-deploy", "Ubunut", "latest"]
}

variable "region" {
  description = "our desired region"
  type        = string
  default     = "nyc3"
}

variable "ssh_username" {
  description = "our user access"
  type        = string
  default     = "root"
}