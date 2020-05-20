
module "vpc" {
  source      = "./vpc"
  description = "The vpc that posthog will be loaded into"
}

module "ecs" {
  source      = "./ecs"
  description = "Module for booting up the ec2 backed ecs cluster for posthog"

  vpc_id            = module.vpc.vpc_id
  public_subnet_id  = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_idj
}

