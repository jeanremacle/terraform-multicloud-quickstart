
data "metal_operating_system" "this" {
  name             = var.operating_system
  provisionable_on = var.plan
}

data "metal_metro" "sv" {
  code = "dc"
}

resource "metal_project" "this" {
  name = var.project
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = "2048"
}

resource "metal_project_ssh_key" "this" {
  name       = var.name
  public_key = tls_private_key.this.public_key_openssh
  project_id = metal_project.this.id
}

resource "metal_device" "this" {
  hostname            = var.name
  plan                = var.plan
  metro               = var.metro
  operating_system    = data.metal_operating_system.this.slug
  billing_cycle       = var.billing_cycle
  project_id          = metal_project.this.id
  project_ssh_key_ids = [metal_project_ssh_key.this.id]
  user_data           = data.cloudinit_config.this.rendered
}

data "cloudinit_config" "this" {
  gzip          = false
  base64_encode = false

  part {
    filename     = "init.sh"
    content_type = "text/x-shellscript"
    content = templatefile("${path.root}/${var.script}", {
      "dnsdomain"   = var.dnsdomain
      "hostname"    = var.name
      "pod_cidr"    = var.pod_cidr
      "svc"         = var.svc
      "zeronsd"     = var.zeronsd
      "zt_identity" = var.zt_identity
      "zt_network"  = var.zt_network
      "zt_token"    = var.zt_token
    })
  }
}
