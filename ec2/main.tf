#Pulls infoamrion from vpc workspace
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "iuliamzaharia"
    workspaces = {
      name = "vpc"
    }
  }
}


#Pulls information from rds workspace
data "terraform_remote_state" "rds" {
  backend = "remote"

  config = {
    organization = "iuliamzaharia"
    workspaces = {
      name = "rds"
    }
  }
}
