module "rgprod" {
    source = "../../Modules/RG"
    rg = var.rgprod
  
}
module "saprod" {
    source = "../../Modules/SA"
    sa = var.saprod
    depends_on = [ module.rgprod ]
  
}