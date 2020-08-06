module "os" {
  source = "git@github.com:marcmodin/project-central-repo.git//project-sub-repo"
}

output "os_name" {
  value = module.os.name
}

output "os_terraform_version" {
  value = module.os.terraform_version
}