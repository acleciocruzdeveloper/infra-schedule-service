locals {
  project     = "scheduled"
  environment = var.environment

  cluster_name = "${local.project}-${local.environment}-cluster"
  common_tags = {
    Terraform    = "true"
    Environment  = local.environment
    ProjectOwner = "acleciocruz"
    ProjectName  = "scheduled"
    version      = "1.0.0"
  }

  security_group_name        = "${local.project}-${local.environment}"
}