terraform {
  cloud {
    organization = "qbank"
    hostname = "app.terraform.io"

    workspaces {
      project = "new_customer"
      name = "asg"
      tags = ["asg", "source:cli"]
    }
  }
}
