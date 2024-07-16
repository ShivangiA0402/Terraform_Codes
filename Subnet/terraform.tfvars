subnetsunday = {
    subnet1 = {
        name = "linuxsubnet"
        resource_group_name = "sunday-rg"
        virtual_network_name = "linuxvnet"
        address_prefixes = ["192.168.1.0/24"]
    },
    subnet2 = {
        name = "windowssubnet"
        resource_group_name = "sunday-rg"
        virtual_network_name = "windowsvnet"
        address_prefixes = ["10.0.1.0/24"]
    },
      subnet3 = {
        name = "AzureBastionSubnet"
        resource_group_name = "sunday-rg"
        virtual_network_name = "windowsvnet"
        address_prefixes = ["10.0.2.0/24"]
    }
}