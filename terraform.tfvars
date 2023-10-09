tags                 = { environment = "demo", owner = "leodeo", purpose = "TFdemo" }
resource_group_names = ["az-ae-devrg1", "az-se-devrg2", "az-ae-devrg3", "az-se-devrg4"]
dns_zone_names       = ["raff-dnszone1.com", "raff-dnszone2.com", "raff-dnszone3.com", "raff-dnszone4.com"]

networkrule = [
  {

    name                       = "test1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "100"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  },
  {
    name                       = "test2"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "200"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },
  {
    name                       = "test3"
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "300"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  },
   {
    name                       = "test4"
    priority                   = 400
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "400"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
]
