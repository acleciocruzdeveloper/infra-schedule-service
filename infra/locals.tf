locals {
  project          = "scheduled"
  microserviceName = "queue-worker"
  cluster_name     = "${local.project}-${local.microserviceName}-cluster"
  common_tags = {
    Terraform    = "true"
    Environment  = local.microserviceName
    ProjectOwner = "acleciocruz"
    ProjectName  = "scheduled"
    version      = "1.0.0"
  }

  security_group_name = "${local.project}-${local.microserviceName}"
}