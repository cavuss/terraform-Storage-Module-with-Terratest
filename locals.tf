
locals {
  region_short_code = "euw"
  sa_name           = "saprefx${var.bu_identifier}${local.region_short_code}${var.virtual_network}${var.number}"
  #try a uniqgue number for var.number

  tags = {
    "ENV"        = var.environment
    "location"   = local.region_short_code
  }
}