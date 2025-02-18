terraform {
  cloud {

    organization = "terraform-sg"
    hostname     = "app.terraform.io"

    workspaces {
      name = "master-subnet"
    }
  }
}