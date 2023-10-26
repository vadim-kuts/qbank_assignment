terraform {
  cloud {
    organization = "qbank"
    hostname = "app.terraform.io"

    workspaces {
      project = "new_customer"
      name = "vpc"
      tags = ["vpc", "source:cli"]
    }
  }
}
