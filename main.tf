data "azurerm_resource_group" "main" {
    name = "${var.prefix}-resources"
}

module "aks" {
    source  = "tfe.astrader.3381802800.workshops.arctiq.ca/myteranet/aks/azure"
    version = "1.0.0"

    # insert required variables here
#    cluster_name          = azurerm_kubernetes_cluster.default.name
#    resource_group_name   = data.azurerm_resource_group.main.name
#    ARM_CLIENT_ID         = 0b9f0800-f971-4f22-a7be-9b33d9e9ca2e
#    ARM_CLIENT_SECRET     = Dc~8Q~yv8VUb6.bMCObtn5AWEBiY6rjT0RJrYaqq
#    prefix                = astrader
    azurerm_kubernetes_cluster.default.name  = var.cluster_name
    resource_group_name   = data.azurerm_resource_group.main.name
    "0b9f0800-f971-4f22-a7be-9b33d9e9ca2e"         = var.ARM_CLIENT_ID
    "Dc~8Q~yv8VUb6.bMCObtn5AWEBiY6rjT0RJrYaqq" = var.ARM_CLIENT_SECRET
    astrader                = var.prefix
}

