locals {
  business_unit  = "testbu"
  short_location = "euw"
  rg_name        = "rg-${local.business_unit}-${local.short_location}-test"
  sa_name        = "sa${local.business_unit}${local.short_location}terra"
  location       = "West Europe"

  tags = {
    "Billing"     = "test-billing-acc"
    "IT Services" = "Azure Cloud Landing Zone"
    "Env"         = "Build"
  }
}
