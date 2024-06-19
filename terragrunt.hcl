locals {
  foo = "bar"
}


terraform {
  extra_arguments "common_vars" {
    commands = [
      "apply",
      "plan",
      "import",
      "push",
      "refresh"
    ]

    arguments = [
      "-var-file=${get_parent_terragrunt_dir()}/common.tfvars"
    ]
  }
}
