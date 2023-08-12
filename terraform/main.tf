module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sandbox-aft@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "sandbox-aft@gmail.com"
    SSOUserFirstName          = "sandbox"
    SSOUserLastName           = "aft"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
