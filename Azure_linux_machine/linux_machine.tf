resource "azurerm_linux_virtual_machine" "mylinux" {
  name = "mylinuxvm-1"
  computer_name = "linuxUser"
  resource_group_name = azurerm_resource_group.myrg.name
  location = azurerm_resource_group.myrg.location
  size = "Standard_DS1_V2"
  admin_username = "azureUser"
  network_interface_ids = [ azurerm_network_interface.myvmnic.id ]
  admin_ssh_key {
    username = "azureUser"
    public_key = file("${path.module}/ssh-folder/ssh-key-azure.pub")
  }
  os_disk {
    name = "OsDisk"
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "RedHat"
    offer = "RHEL"
    sku = "83-gen2"
    version = "latest"
  }
  custom_data = filebase64("${path.module}/app-scripts/scripts.txt")
}