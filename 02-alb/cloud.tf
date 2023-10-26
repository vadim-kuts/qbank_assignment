terraform {
  cloud {
    organization = "qbank"
    hostname = "app.terraform.io"

    workspaces {
      project = "new_customer"
      name = "alb"
      tags = ["alb", "source:cli"]
    }
  }
}
