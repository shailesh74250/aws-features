module "vpc" {
  source = "./modules/vpc"
}

module "security" {
  source = "./modules/security"
}

module "ecs" {
  source = "./modules/ecs"
}

module "rds" {
  source = "./modules/rds"
}
