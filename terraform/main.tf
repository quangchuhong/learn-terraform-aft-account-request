module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sbox5@gmail.com"
    AccountName               = "sbox5"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "sbox5@gmail.com"
    SSOUserFirstName          = "sbox"
    SSOUserLastName           = "5"
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
