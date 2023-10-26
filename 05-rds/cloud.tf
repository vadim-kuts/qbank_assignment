terraform {
  cloud {
    organization = "qbank"
    hostname = "app.terraform.io"

    workspaces {
      project = "new_customer"
      name = "rds"
      tags = ["rds", "source:cli"]
    }
  }
}
