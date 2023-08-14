module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sbox10@gmail.com"
    AccountName               = "sbox10"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "sbox10@gmail.com"
    SSOUserFirstName          = "sbox"
    SSOUserLastName           = "10"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp"
    change_reason       = "Learn"
  }

  account_customizations_name = "sandbox"
}
