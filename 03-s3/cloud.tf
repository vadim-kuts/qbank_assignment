terraform {
  cloud {
    organization = "qbank"
    hostname = "app.terraform.io"

    workspaces {
      project = "new_customer"
      name = "s3"
      tags = ["s3", "source:cli"]
    }
  }
}
