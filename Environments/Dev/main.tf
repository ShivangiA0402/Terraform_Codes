module "callingrg" {
    source = "../../Modules/RG"
    rg = var.rg1
}
module "callingsa" {
    source = "../../Modules/SA"
    sa = var.sa1
    depends_on = [ module.callingrg ]
}