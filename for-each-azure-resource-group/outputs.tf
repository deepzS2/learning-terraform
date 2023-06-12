output "location-resource-group-eua" {
  value = axurerm_resource_group.resoruce_group["EUA"].location
}

output "location-resource-group-europe" {
  value = axurerm_resource_group.resoruce_group["Europe"].location
}

output "location-resource-group-asia" {
  value = axurerm_resource_group.resoruce_group["Asia"].location
}
